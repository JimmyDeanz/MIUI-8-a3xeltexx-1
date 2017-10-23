.class Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;
.super Ljava/lang/Object;
.source "WifiHs20CertificateManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertTrustManager"
.end annotation


# instance fields
.field ks:Ljava/security/KeyStore;

.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

.field tm:Lcom/android/org/conscrypt/TrustManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->this$0:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .param p2, "x1"    # Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;-><init>(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "HS20CertificateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkClientTrusted] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
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
    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, "fis":Ljava/io/FileInputStream;
    const-string v6, "HS20CertificateManager"

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

    .line 123
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    array-length v6, p1

    if-ge v4, v6, :cond_0

    .line 125
    aget-object v6, p1, v4

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_0
    const-string v6, "HS20CertificateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "going for local keystore keyPass : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->this$0:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v5, "trustAnchors":Ljava/io/File;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->ks:Ljava/security/KeyStore;

    .line 130
    const-string v6, "HS20CertificateManager"

    const-string v7, "fetchTrustManagerFactory:loading trust managers"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->ks:Ljava/security/KeyStore;

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->this$0:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 133
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 134
    new-instance v6, Lcom/android/org/conscrypt/TrustManagerImpl;

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->ks:Ljava/security/KeyStore;

    invoke-direct {v6, v7}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    iput-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 135
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 136
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->this$0:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->server:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->access$100(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "EST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 137
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->this$0:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20ValidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;
    invoke-static {v6}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;)Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    move-result-object v6

    invoke-direct {v0, p1, v6}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;-><init>([Ljava/security/cert/X509Certificate;Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;)V

    .line 139
    .local v0, "certValidation":Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;
    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->validate()Z

    move-result v6

    if-nez v6, :cond_2

    .line 140
    const-string v6, "HS20CertificateManager"

    const-string v7, "hs20certificate validation also failed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "Passpoint Certificate Validations are failed"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    .end local v0    # "certValidation":Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 145
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "trustAnchors":Ljava/io/File;
    .local v1, "e":Ljava/security/cert/CertificateException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v6

    .line 151
    :goto_2
    if-eqz v2, :cond_1

    .line 152
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 156
    :cond_1
    :goto_3
    throw v6

    .line 151
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "trustAnchors":Ljava/io/File;
    :cond_2
    if-eqz v3, :cond_3

    .line 152
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 158
    :cond_3
    :goto_4
    return-void

    .line 154
    :catch_1
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "trustAnchors":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 150
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

    .line 146
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 144
    .end local v5    # "trustAnchors":Ljava/io/File;
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 162
    const-string v0, "HS20CertificateManager"

    const-string v1, "[getAcceptedIssuers] "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
