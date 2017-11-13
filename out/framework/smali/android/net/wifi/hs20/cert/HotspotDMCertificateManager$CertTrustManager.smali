.class public Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;
.super Ljava/lang/Object;
.source "HotspotDMCertificateManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CertTrustManager"
.end annotation


# instance fields
.field private HS20_CA_KEYSTORE:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

.field tm:Lcom/android/org/conscrypt/TrustManagerImpl;


# direct methods
.method public constructor <init>(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)V
    .locals 1

    .prologue
    .line 79
    iput-object p1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "HS20CAKeyStore.bks"

    iput-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "HotspotDMCertificateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkClientTrusted] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 9
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, "fis":Ljava/io/FileInputStream;
    const-string v6, "HotspotDMCertificateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[checkServerTrusted] X509Certificate amount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cryptography: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    array-length v6, p1

    if-ge v4, v6, :cond_0

    .line 98
    const-string v6, "HotspotDMCertificateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "X509Certificate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v6, "HotspotDMCertificateManager"

    const-string v7, "===================="

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    aget-object v6, p1, v4

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/misc/wifi/hs20/"

    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v5, "trustAnchors":Ljava/io/File;
    iget-object v6, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    # setter for: Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->ks:Ljava/security/KeyStore;
    invoke-static {v6, v7}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->access$002(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;Ljava/security/KeyStore;)Ljava/security/KeyStore;

    .line 105
    const-string v6, "HotspotDMCertificateManager"

    const-string v7, "fetchTrustManagerFactory:loading trust managers"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v6, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    # getter for: Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->ks:Ljava/security/KeyStore;
    invoke-static {v6}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->access$000(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/security/KeyStore;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    # getter for: Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->keyPass:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->access$100(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 108
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 109
    new-instance v6, Lcom/android/org/conscrypt/TrustManagerImpl;

    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    # getter for: Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->ks:Ljava/security/KeyStore;
    invoke-static {v7}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->access$000(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/security/KeyStore;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    iput-object v6, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 110
    iget-object v6, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 111
    new-instance v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;

    iget-object v6, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    # getter for: Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->hs20ValidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;
    invoke-static {v6}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->access$200(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    move-result-object v6

    invoke-direct {v0, p1, v6}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;-><init>([Ljava/security/cert/X509Certificate;Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;)V

    .line 113
    .local v0, "certValidation":Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;
    invoke-virtual {v0}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->validate()Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    const-string v6, "HotspotDMCertificateManager"

    const-string/jumbo v7, "hs20certificate validation also failed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "Passpoint Certificate Validations are failed"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    .end local v0    # "certValidation":Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 119
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "trustAnchors":Ljava/io/File;
    .local v1, "e":Ljava/security/cert/CertificateException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 120
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v6

    .line 129
    :goto_2
    if-eqz v2, :cond_1

    .line 130
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 134
    :cond_1
    :goto_3
    throw v6

    .line 129
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "certValidation":Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "trustAnchors":Ljava/io/File;
    :cond_2
    if-eqz v3, :cond_3

    .line 130
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 136
    :cond_3
    :goto_4
    return-void

    .line 132
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 121
    .end local v0    # "certValidation":Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "trustAnchors":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 122
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "trustAnchors":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 124
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 121
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 118
    .end local v5    # "trustAnchors":Ljava/io/File;
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 140
    const-string v0, "HotspotDMCertificateManager"

    const-string v1, "[getAcceptedIssuers] "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
