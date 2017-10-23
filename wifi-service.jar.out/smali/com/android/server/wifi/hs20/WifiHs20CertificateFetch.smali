.class public Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;
.super Ljava/lang/Object;
.source "WifiHs20CertificateFetch.java"


# static fields
.field private static final hs20keyStorePath:Ljava/lang/String; = "/data/misc/wifi/hs20/HSClientCertKeystore.bks"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "WifiHs20CertificateFetch"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;->TAG:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;->mcontext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 28
    return-void
.end method


# virtual methods
.method public VerifyTrustRoot([Ljava/security/cert/X509Certificate;I)Z
    .locals 13
    .param p1, "serverCertificate"    # [Ljava/security/cert/X509Certificate;
    .param p2, "credentialID"    # I

    .prologue
    .line 31
    const/4 v5, 0x0

    .line 32
    .local v5, "flag":Z
    const/4 v8, 0x0

    .line 33
    .local v8, "mFingerPrint":[B
    new-instance v7, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;->mcontext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 34
    .local v7, "mDB":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    const/4 v11, 0x0

    invoke-virtual {v7, p2, v11}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v6

    .line 35
    .local v6, "mCredential":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    iget-object v11, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v2, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    .line 36
    .local v2, "FP":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 38
    const/4 v11, 0x0

    :try_start_0
    aget-object v3, p1, v11

    .line 39
    .local v3, "TrustRoot":Ljava/security/cert/X509Certificate;
    const-string v11, "SHA1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 40
    .local v9, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 41
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 42
    .local v1, "AAAFingerprintSHA1":[B
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 43
    .local v10, "md1":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 44
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 45
    .local v0, "AAAFingerprintMD5":[B
    if-eq v0, v8, :cond_0

    if-ne v1, v8, :cond_1

    .line 46
    :cond_0
    const/4 v5, 0x1

    .line 54
    .end local v0    # "AAAFingerprintMD5":[B
    .end local v1    # "AAAFingerprintSHA1":[B
    .end local v3    # "TrustRoot":Ljava/security/cert/X509Certificate;
    .end local v9    # "md":Ljava/security/MessageDigest;
    .end local v10    # "md1":Ljava/security/MessageDigest;
    :goto_0
    return v5

    .line 48
    .restart local v0    # "AAAFingerprintMD5":[B
    .restart local v1    # "AAAFingerprintSHA1":[B
    .restart local v3    # "TrustRoot":Ljava/security/cert/X509Certificate;
    .restart local v9    # "md":Ljava/security/MessageDigest;
    .restart local v10    # "md1":Ljava/security/MessageDigest;
    :cond_1
    const/4 v5, 0x0

    .line 49
    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;->TAG:Ljava/lang/String;

    const-string v12, "MD5 or SHA1 FingerPRint doesnt match"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0    # "AAAFingerprintMD5":[B
    .end local v1    # "AAAFingerprintSHA1":[B
    .end local v3    # "TrustRoot":Ljava/security/cert/X509Certificate;
    .end local v9    # "md":Ljava/security/MessageDigest;
    .end local v10    # "md1":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 52
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fetchCertificate(I)Ljavax/net/ssl/KeyManagerFactory;
    .locals 10
    .param p1, "credentialId"    # I

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v4, 0x0

    .line 66
    .local v4, "mClientCertKeystore":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 67
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default algorithm"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-nez v2, :cond_0

    .line 69
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;->TAG:Ljava/lang/String;

    const-string v8, "Instance is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 71
    .local v3, "ks":Ljava/security/KeyStore;
    const-string v7, "changeit"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 72
    .local v6, "password":[C
    new-instance v5, Ljava/io/FileInputStream;

    const-string v7, "/data/misc/wifi/hs20/HSClientCertKeystore.bks"

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v4    # "mClientCertKeystore":Ljava/io/InputStream;
    .local v5, "mClientCertKeystore":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 74
    const-string v7, "changeit"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 75
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;->TAG:Ljava/lang/String;

    const-string v8, "Initialisation done successfully"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    if-eqz v5, :cond_1

    .line 85
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v4, v5

    .line 91
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v5    # "mClientCertKeystore":Ljava/io/InputStream;
    .end local v6    # "password":[C
    .restart local v4    # "mClientCertKeystore":Ljava/io/InputStream;
    :cond_2
    :goto_0
    return-object v2

    .line 87
    .end local v4    # "mClientCertKeystore":Ljava/io/InputStream;
    .restart local v3    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "mClientCertKeystore":Ljava/io/InputStream;
    .restart local v6    # "password":[C
    :catch_0
    move-exception v1

    .line 88
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 90
    .end local v5    # "mClientCertKeystore":Ljava/io/InputStream;
    .restart local v4    # "mClientCertKeystore":Ljava/io/InputStream;
    goto :goto_0

    .line 76
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v6    # "password":[C
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;->TAG:Ljava/lang/String;

    const-string v8, "Getting key manager factory failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateFetch;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetch"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    if-eqz v4, :cond_2

    .line 85
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 87
    :catch_2
    move-exception v1

    .line 88
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    if-eqz v4, :cond_2

    .line 85
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 87
    :catch_4
    move-exception v1

    .line 88
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 84
    :goto_3
    if-eqz v4, :cond_3

    .line 85
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 89
    :cond_3
    :goto_4
    throw v7

    .line 87
    :catch_5
    move-exception v1

    .line 88
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 83
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "mClientCertKeystore":Ljava/io/InputStream;
    .restart local v3    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "mClientCertKeystore":Ljava/io/InputStream;
    .restart local v6    # "password":[C
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "mClientCertKeystore":Ljava/io/InputStream;
    .restart local v4    # "mClientCertKeystore":Ljava/io/InputStream;
    goto :goto_3

    .line 80
    .end local v4    # "mClientCertKeystore":Ljava/io/InputStream;
    .restart local v5    # "mClientCertKeystore":Ljava/io/InputStream;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5    # "mClientCertKeystore":Ljava/io/InputStream;
    .restart local v4    # "mClientCertKeystore":Ljava/io/InputStream;
    goto :goto_2

    .line 76
    .end local v4    # "mClientCertKeystore":Ljava/io/InputStream;
    .restart local v5    # "mClientCertKeystore":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5    # "mClientCertKeystore":Ljava/io/InputStream;
    .restart local v4    # "mClientCertKeystore":Ljava/io/InputStream;
    goto :goto_1
.end method
