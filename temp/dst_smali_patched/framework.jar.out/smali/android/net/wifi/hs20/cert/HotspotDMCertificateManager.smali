.class public Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;
.super Ljava/lang/Object;
.source "HotspotDMCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;
    }
.end annotation


# static fields
.field private static final HS20ESTKeyStorePath:Ljava/lang/String; = "/data/misc/wifi/hs20/HSClientCertESTKeyStore_"

.field public static final HS20_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/wifi/hs20/"

.field private static final OSU_SERVER:Ljava/lang/String; = "OSU"

.field private static final TAG:Ljava/lang/String; = "HotspotDMCertificateManager"


# instance fields
.field private hs20ValidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

.field private keyPass:Ljava/lang/String;

.field private ks:Ljava/security/KeyStore;

.field private mCertID:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->mCertID:I

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->ks:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->ks:Ljava/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;Ljava/security/KeyStore;)Ljava/security/KeyStore;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;
    .param p1, "x1"    # Ljava/security/KeyStore;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->ks:Ljava/security/KeyStore;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->keyPass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->hs20ValidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    return-object v0
.end method


# virtual methods
.method public fetchKeyManFac(Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 10
    .param p1, "serverType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v9, "OSU"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    return-object v8

    :cond_0
    const-string v8, "HotspotDMCertificateManager"

    const-string v9, "fetchKeyManFac(int credentialID)"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/misc/wifi/hs20/HSClientCertESTKeyStore_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->mCertID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".p12"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "clientKeyStore":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->keyPass:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .local v7, "password":[C
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    .local v5, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "PKCS12"

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .local v6, "keyStore":Ljava/security/KeyStore;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6, v4, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v5, v6, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v8

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v5, v8, v9}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v8, "HotspotDMCertificateManager"

    const-string v9, "got an exception "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_5
    throw v8

    :catch_3
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "keyStore":Ljava/security/KeyStore;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public fetchTrustManagerFactory()[Ljavax/net/ssl/TrustManager;
    .locals 3

    .prologue
    const-string v0, "HotspotDMCertificateManager"

    const-string v1, "fetchTrustManagerFactory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;

    invoke-direct {v2, p0}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;-><init>(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public setCertID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    iput p1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->mCertID:I

    return-void
.end method

.method public setKeyPass(Ljava/lang/String;)V
    .locals 0
    .param p1, "keypass"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->keyPass:Ljava/lang/String;

    return-void
.end method

.method public setParams(Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;)V
    .locals 0
    .param p1, "parameters"    # Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->hs20ValidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    return-void
.end method
