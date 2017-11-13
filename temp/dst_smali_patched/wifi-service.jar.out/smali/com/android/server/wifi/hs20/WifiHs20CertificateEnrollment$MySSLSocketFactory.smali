.class public Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "WifiHs20CertificateEnrollment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySSLSocketFactory"
.end annotation


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;

.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;Ljava/security/KeyStore;)V
    .locals 12
    .param p2, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;->this$0:Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;

    invoke-direct {p0, p2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const-string v8, "TLS"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    iget-object v8, p1, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;-><init>(Landroid/content/Context;)V

    .local v0, "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    new-instance v2, Ljava/io/File;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HSClientCertESTKeyStore_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;
    invoke-static {p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->access$000(Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;)Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-result-object v10

    iget v10, v10, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".p12"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    const/4 v5, 0x0

    .local v5, "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    const-string v8, "PKCS12"

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .local v6, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;
    invoke-static {p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->access$100(Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;)Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->remediationFlag:Z

    if-eqz v8, :cond_1

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    # getter for: Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->access$200(Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v8, "HS20CertificateEnrollment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MySSLSocketFactory:keystore size befire loading :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/security/KeyStore;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->access$200(Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v9

    const-string v10, "EST"

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->fetchTrustManagerFactory(Ljava/lang/String;)[Ljavax/net/ssl/TrustManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v7

    .local v7, "mSSLEngine":Ljavax/net/ssl/SSLEngine;
    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v8}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v8

    iput-object v8, p1, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->tlsVal:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v0    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "mSSLEngine":Ljavax/net/ssl/SSLEngine;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v6    # "keyStore":Ljava/security/KeyStore;
    :cond_1
    :try_start_4
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v9, 0x0

    const-string v10, "EST"

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->fetchTrustManagerFactory(Ljava/lang/String;)[Ljavax/net/ssl/TrustManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v8, "HS20CertificateEnrollment"

    const-string v9, "MySSLSocketFactory:exception occured"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v6    # "keyStore":Ljava/security/KeyStore;
    .restart local v7    # "mSSLEngine":Ljavax/net/ssl/SSLEngine;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "mSSLEngine":Ljavax/net/ssl/SSLEngine;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_2
    :goto_4
    throw v8

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v6    # "keyStore":Ljava/security/KeyStore;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
