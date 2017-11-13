.class public Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;
.super Ljava/lang/Object;
.source "WifiHs20InstallCertificate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HS20InstallCertificate"


# instance fields
.field private CA_CERT_PATH:Ljava/lang/String;

.field private DEFAULT_CERT_ID:I

.field private HS20_EST_KEYSTORE_PATH:Ljava/lang/String;

.field private PEM_DEFAULT_LENGTH:I

.field private SIGMA_TESTING_DEFAULT_PASSWD:Ljava/lang/String;

.field private TYPE_CERT:Ljava/lang/String;

.field private aaaCACert:Ljava/security/cert/X509Certificate;

.field private aaaCACertHash:Ljava/lang/String;

.field public certID:I

.field private clientCert:Ljava/security/cert/X509Certificate;

.field private clientCertHash:Ljava/lang/String;

.field public clientKeyHash:Ljava/lang/String;

.field public credID:I

.field private hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

.field private hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

.field private key:Ljava/security/Key;

.field private keyHash:Ljava/lang/String;

.field private keyPass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->aaaCACertHash:Ljava/lang/String;

    .line 43
    const-string v0, "/data/misc/wifi/hs20/"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->CA_CERT_PATH:Ljava/lang/String;

    .line 45
    const-string v0, "/data/misc/wifi/hs20/HSClientCertESTKeyStore_0.p12"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->HS20_EST_KEYSTORE_PATH:Ljava/lang/String;

    .line 49
    const/16 v0, 0x6c1

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->DEFAULT_CERT_ID:I

    .line 189
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->PEM_DEFAULT_LENGTH:I

    .line 191
    const-string v0, "wifi@123"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->SIGMA_TESTING_DEFAULT_PASSWD:Ljava/lang/String;

    .line 193
    const-string v0, "CERT"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->TYPE_CERT:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    .line 54
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    .line 55
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->genPasswd1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getCA(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v11, 0x0

    .line 320
    .local v11, "root":Ljava/security/cert/X509Certificate;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v12, v12

    new-array v2, v12, [B

    .line 322
    .local v2, "buffer":[B
    const/4 v9, 0x0

    .line 324
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 326
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 327
    const/4 v3, 0x0

    .line 328
    .local v3, "cert":Ljava/io/ByteArrayInputStream;
    const-string v12, ".pem"

    invoke-virtual {p1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, ".0"

    invoke-virtual {p1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 329
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 330
    .local v4, "certString":Ljava/lang/String;
    const-string v12, "-----"

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "certs":[Ljava/lang/String;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .end local v3    # "cert":Ljava/io/ByteArrayInputStream;
    const/4 v12, 0x2

    aget-object v12, v5, v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 333
    .end local v4    # "certString":Ljava/lang/String;
    .end local v5    # "certs":[Ljava/lang/String;
    .restart local v3    # "cert":Ljava/io/ByteArrayInputStream;
    :cond_1
    const-string v12, ".der"

    invoke-virtual {p1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 334
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .end local v3    # "cert":Ljava/io/ByteArrayInputStream;
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 336
    .restart local v3    # "cert":Ljava/io/ByteArrayInputStream;
    :cond_2
    const-string v12, "X509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 337
    .local v6, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v6, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v11, v0

    .line 338
    const-string v12, "HS20InstallCertificate"

    const-string v13, "got  ca cert from  der format "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 345
    if-eqz v10, :cond_3

    .line 346
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v9, v10

    .line 352
    .end local v3    # "cert":Ljava/io/ByteArrayInputStream;
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_0
    return-object v11

    .line 348
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "cert":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 349
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 351
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 339
    .end local v3    # "cert":Ljava/io/ByteArrayInputStream;
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 340
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    if-eqz v9, :cond_4

    .line 346
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 348
    :catch_2
    move-exception v7

    .line 349
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 341
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 342
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 345
    if-eqz v9, :cond_4

    .line 346
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 348
    :catch_4
    move-exception v7

    .line 349
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 345
    :goto_3
    if-eqz v9, :cond_5

    .line 346
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 350
    :cond_5
    :goto_4
    throw v12

    .line 348
    :catch_5
    move-exception v7

    .line 349
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 344
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 341
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 339
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private getClientCert(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v2, 0x0

    .line 384
    .local v2, "client_cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 386
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v7, "PKCS12"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 387
    .local v6, "pkcs12":Ljava/security/KeyStore;
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    const-string v7, "wifi@123"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 389
    invoke-virtual {v6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .line 390
    .local v3, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 391
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    .local v1, "alias":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 393
    const-string v7, "HS20InstallCertificate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subjectDn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 395
    .end local v1    # "alias":Ljava/lang/String;
    .end local v3    # "e":Ljava/util/Enumeration;
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 396
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "pkcs12":Ljava/security/KeyStore;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    if-eqz v4, :cond_0

    .line 400
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 406
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v2

    .line 398
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/util/Enumeration;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "pkcs12":Ljava/security/KeyStore;
    :cond_1
    if-eqz v5, :cond_3

    .line 400
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .line 403
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 401
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 402
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 403
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 401
    .end local v6    # "pkcs12":Ljava/security/KeyStore;
    .local v3, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 402
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 398
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    .line 400
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 403
    :cond_2
    :goto_4
    throw v7

    .line 401
    :catch_3
    move-exception v3

    .line 402
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 398
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "pkcs12":Ljava/security/KeyStore;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 395
    .end local v6    # "pkcs12":Ljava/security/KeyStore;
    :catch_4
    move-exception v3

    goto :goto_1

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/util/Enumeration;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "pkcs12":Ljava/security/KeyStore;
    :cond_3
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private getClientPrivKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Key;
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 356
    const/4 v5, 0x0

    .line 357
    .local v5, "priv_key":Ljava/security/Key;
    const/4 v2, 0x0

    .line 359
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    const-string v6, "PKCS12"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 361
    .local v4, "pkcs12":Ljava/security/KeyStore;
    const-string v6, "wifi@123"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 362
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 363
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 364
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    .local v0, "alias":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->SIGMA_TESTING_DEFAULT_PASSWD:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    .line 366
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 368
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v4    # "pkcs12":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 369
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    if-eqz v2, :cond_0

    .line 373
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v5

    .line 372
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/util/Enumeration;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "pkcs12":Ljava/security/KeyStore;
    :cond_1
    if-eqz v3, :cond_2

    .line 373
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v2, v3

    .line 377
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 375
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 378
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 375
    .end local v4    # "pkcs12":Ljava/security/KeyStore;
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 371
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 372
    :goto_3
    if-eqz v2, :cond_3

    .line 373
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 377
    :cond_3
    :goto_4
    throw v6

    .line 375
    :catch_3
    move-exception v1

    .line 376
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 371
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 368
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 410
    const/16 v3, 0x10

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 413
    .local v1, "hexDigits":[C
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 414
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 415
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 410
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private setSecuredAccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 208
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 770 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 209
    .local v1, "su":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 210
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chown system:wifi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v1    # "su":Ljava/lang/Process;
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private writeToESTKeyStore(Ljava/security/cert/X509Certificate;Ljava/security/Key;)V
    .locals 12
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "bs"    # Ljava/security/Key;

    .prologue
    .line 218
    const/4 v9, 0x0

    .line 219
    .local v9, "ks":Ljava/security/KeyStore;
    new-instance v2, Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->HS20_EST_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 221
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 222
    .local v7, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 225
    .local v5, "fos1":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->checkForHs20()V

    .line 226
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 227
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-nez v10, :cond_5

    .line 228
    const-string v10, "HS20InstallCertificate"

    const-string v11, "error i creating new file "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    :goto_0
    const-string v10, "PKCS12"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    .line 234
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 235
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->HS20_EST_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 237
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 238
    const-string v10, "PKCS12"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    .line 239
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->HS20_EST_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    .end local v7    # "is":Ljava/io/InputStream;
    .local v8, "is":Ljava/io/InputStream;
    :try_start_2
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 241
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 242
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/security/cert/X509Certificate;

    .line 243
    .local v0, "chain":[Ljava/security/cert/X509Certificate;
    const/4 v10, 0x0

    aput-object p1, v0, v10

    .line 244
    const-string v10, "Credential"

    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-virtual {v9, v10, p2, v11, v0}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 245
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->HS20_EST_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 246
    .end local v5    # "fos1":Ljava/io/FileOutputStream;
    .local v6, "fos1":Ljava/io/FileOutputStream;
    :try_start_3
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 247
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 254
    if-eqz v4, :cond_1

    .line 255
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 257
    :cond_1
    if-eqz v6, :cond_2

    .line 258
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 260
    :cond_2
    if-eqz v8, :cond_3

    .line 261
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    move-object v5, v6

    .end local v6    # "fos1":Ljava/io/FileOutputStream;
    .restart local v5    # "fos1":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    move-object v3, v4

    .line 267
    .end local v0    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    return-void

    .line 230
    :cond_5
    :try_start_5
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->HS20_EST_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->setSecuredAccess(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 254
    if-eqz v3, :cond_6

    .line 255
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 257
    :cond_6
    if-eqz v5, :cond_7

    .line 258
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 260
    :cond_7
    if-eqz v7, :cond_4

    .line 261
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 263
    :catch_1
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 263
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "fos1":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v0    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos1":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 264
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "fos1":Ljava/io/FileOutputStream;
    .restart local v5    # "fos1":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    move-object v3, v4

    .line 266
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 250
    .end local v0    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 254
    if-eqz v3, :cond_8

    .line 255
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 257
    :cond_8
    if-eqz v5, :cond_9

    .line 258
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 260
    :cond_9
    if-eqz v7, :cond_4

    .line 261
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    .line 263
    :catch_4
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 253
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 254
    :goto_4
    if-eqz v3, :cond_a

    .line 255
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 257
    :cond_a
    if-eqz v5, :cond_b

    .line 258
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 260
    :cond_b
    if-eqz v7, :cond_c

    .line 261
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 265
    :cond_c
    :goto_5
    throw v10

    .line 263
    :catch_5
    move-exception v1

    .line 264
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 253
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "fos1":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v0    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos1":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catchall_3
    move-exception v10

    move-object v5, v6

    .end local v6    # "fos1":Ljava/io/FileOutputStream;
    .restart local v5    # "fos1":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 250
    .end local v0    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v1

    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "fos1":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v0    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos1":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6    # "fos1":Ljava/io/FileOutputStream;
    .restart local v5    # "fos1":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 248
    .end local v0    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v1

    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "fos1":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v0    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos1":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_b
    move-exception v1

    move-object v5, v6

    .end local v6    # "fos1":Ljava/io/FileOutputStream;
    .restart local v5    # "fos1":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private writeToPPSMO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "priv_key_hash"    # Ljava/lang/String;
    .param p2, "certHash"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 197
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;-><init>()V

    .line 198
    .local v0, "credDetails":Lcom/android/server/wifi/hs20/WifiHs20CredDetails;
    iput v2, v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    .line 199
    iput v2, v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->credID:I

    .line 200
    iput-object p2, v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->clientCertHash:Ljava/lang/String;

    .line 201
    iput-object p1, v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->privateKeyHash:Ljava/lang/String;

    .line 202
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 203
    .local v1, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredDetails(Lcom/android/server/wifi/hs20/WifiHs20CredDetails;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public checkForHs20()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/hs20/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 273
    const-string v1, "/data/misc/wifi/hs20/"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->setSecuredAccess(Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method public genCertID()I
    .locals 8

    .prologue
    .line 422
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 423
    .local v0, "dtNow":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 424
    const-string v3, "%Y%m%d%H%M"

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "lsNow":Ljava/lang/String;
    const-string v3, "HS20InstallCertificate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time stamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 427
    .local v2, "mRandom":Ljava/util/Random;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    long-to-int v3, v4

    return v3
.end method

.method public getHash([B)Ljava/lang/String;
    .locals 4
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 311
    const-string v2, "SHA256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 312
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 313
    const-string v2, "HS20InstallCertificate"

    const-string v3, "sha256 digest complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 315
    .local v0, "fpSHA256":[B
    invoke-static {v0}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hexify([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public install(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const-string p2, "/data/cert/"

    .line 60
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".p12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, "certFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".p12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    const-string v1, "HS20InstallCertificate"

    const-string v2, "install:its PKCS12 keystore"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->getClientCert(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCert:Ljava/security/cert/X509Certificate;

    .line 65
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCert:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "HS20InstallCertificate"

    const-string v2, "install:got client cert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->getHash([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCertHash:Ljava/lang/String;

    .line 68
    const-string v1, "HS20InstallCertificate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install:got client cert hash :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCertHash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCertHash:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->TYPE_CERT:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->writeToSupplicant(Ljava/lang/String;[BLjava/lang/String;)V

    .line 70
    const-string v1, "HS20InstallCertificate"

    const-string v2, "install:wrote certificate  to supplicant file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->getClientPrivKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->key:Ljava/security/Key;

    .line 73
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->key:Ljava/security/Key;

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "HS20InstallCertificate"

    const-string v2, "install:gotprivate key"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->key:Ljava/security/Key;

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->getHash([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyHash:Ljava/lang/String;

    .line 76
    const-string v1, "HS20InstallCertificate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install:got priv key hash :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyHash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyHash:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->key:Ljava/security/Key;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    const-string v3, "KEY"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->writeToSupplicant(Ljava/lang/String;[BLjava/lang/String;)V

    .line 78
    const-string v1, "HS20InstallCertificate"

    const-string v2, "install:wrote private keye  to supplicant file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCert:Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->key:Ljava/security/Key;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->writeToESTKeyStore(Ljava/security/cert/X509Certificate;Ljava/security/Key;)V

    .line 81
    const-string v1, "HS20InstallCertificate"

    const-string v2, "install:wrote both  to KeyStore"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyHash:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCertHash:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->writeToPPSMO(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->testKeyStore()V

    .line 85
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCertHash:Ljava/lang/String;

    return-object v1
.end method

.method public installAAA(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    const-string v1, "/data/cert/"

    .line 90
    .local v1, "filepath":Ljava/lang/String;
    const-string v2, "HS20InstallCertificate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install:its aaa ca fileName: filepath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->getCA(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->aaaCACert:Ljava/security/cert/X509Certificate;

    .line 92
    const-string v2, "HS20InstallCertificate"

    const-string v3, "install:got aaa client cert"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->aaaCACert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->getHash([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->aaaCACertHash:Ljava/lang/String;

    .line 94
    const-string v2, "HS20InstallCertificate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install:got aaa_ca_cert_hash :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->aaaCACertHash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->aaaCACertHash:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->aaaCACert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->TYPE_CERT:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->writeToSupplicant(Ljava/lang/String;[BLjava/lang/String;)V

    .line 96
    const-string v2, "HS20InstallCertificate"

    const-string v3, "install:wrote aaa ca certificate  to supplicant file"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->CA_CERT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->aaaCACertHash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->aaaCACertHash:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->aaaCACertHash:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setTrustRootFP(Ljava/lang/String;I)Z

    .line 100
    const-string v2, "HS20InstallCertificate"

    const-string v3, "wrote to DB"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public installRootCA(Ljava/lang/String;)V
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    const-string v2, "/data/cert/"

    .line 105
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->getCA(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 106
    .local v3, "rootCA":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v4, "temp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v1, "mFile":Ljava/io/File;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 111
    .local v0, "ks":Ljava/security/KeyStore;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->createKeystore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->getKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 116
    const-string v5, "HS20InstallCertificate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storeCACerts: size  of keystore before storing CAcerts:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/KeyStore;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->DEFAULT_CERT_ID:I

    invoke-virtual {v5, v4, v0, v6}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->setCerts(Ljava/util/Collection;Ljava/security/KeyStore;I)Ljava/security/KeyStore;

    move-result-object v0

    .line 118
    const-string v5, "HS20InstallCertificate"

    const-string v6, "storeCACerts: returned from keystoreAPi"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->storeKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    .line 121
    const-string v5, "HS20InstallCertificate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storeCACerts:size of the keystore after storing OSUCAcerts:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/KeyStore;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public storeAllCA(Ljava/io/File;)V
    .locals 9
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 128
    .local v3, "listFile":[Ljava/io/File;
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v4, "temp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_5

    .line 132
    const-string v5, "HS20InstallCertificate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listFile[i].getName() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pem"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "der"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 136
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->getCA(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_3
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 138
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 131
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 140
    :cond_5
    const-string v5, "BKS"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 141
    .local v2, "ks":Ljava/security/KeyStore;
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 142
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v2, v8}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->createKeystore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    .line 144
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v2, v8}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->getKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 146
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->genCertID()I

    move-result v1

    .line 147
    .local v1, "id":I
    if-gez v1, :cond_7

    .line 148
    mul-int/lit8 v1, v1, -0x1

    .line 149
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    invoke-virtual {v5, v4, v2, v1}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->setCerts(Ljava/util/Collection;Ljava/security/KeyStore;I)Ljava/security/KeyStore;

    .line 150
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v2, v8}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->storeKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public testKeyStore()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    const-string v6, "PKCS12"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 156
    .local v5, "ks":Ljava/security/KeyStore;
    const/4 v3, 0x0

    .line 158
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->HS20_EST_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->keyPass:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 160
    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 161
    .local v1, "e":Ljava/util/Enumeration;
    const-string v6, "HS20InstallCertificate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testKeyStore:enumeration has more elements :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, "alias":Ljava/lang/String;
    const-string v6, "HS20InstallCertificate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testKeyStore:alias of keystore:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    iput-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCert:Ljava/security/cert/X509Certificate;

    .line 166
    const-string v6, "HS20InstallCertificate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testKeyStore:subjectDn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->clientCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 170
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "e":Ljava/util/Enumeration;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 171
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    if-eqz v3, :cond_0

    .line 175
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 181
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 169
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "e":Ljava/util/Enumeration;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    const-string v6, "HS20InstallCertificate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testKeyStore:size of the keystore after storing certificate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/KeyStore;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 174
    if-eqz v4, :cond_2

    .line 175
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    move-object v3, v4

    .line 179
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 177
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 180
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 177
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 178
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 173
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 174
    :goto_3
    if-eqz v3, :cond_3

    .line 175
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 179
    :cond_3
    :goto_4
    throw v6

    .line 177
    :catch_3
    move-exception v1

    .line 178
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 173
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 170
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public writeToSupplicant(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 8
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "buf"    # [B
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->CA_CERT_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".pem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 280
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 281
    :cond_0
    const/4 v2, 0x0

    .line 283
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->TYPE_CERT:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 285
    const-string v6, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 288
    :goto_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v5

    .line 289
    .local v5, "value":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_4

    .line 290
    array-length v6, v5

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->PEM_DEFAULT_LENGTH:I

    if-le v6, v7, :cond_3

    .line 291
    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->PEM_DEFAULT_LENGTH:I

    invoke-virtual {v3, v5, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 294
    :goto_2
    const-string v6, "\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 289
    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->PEM_DEFAULT_LENGTH:I

    add-int/2addr v4, v6

    goto :goto_1

    .line 287
    .end local v4    # "i":I
    .end local v5    # "value":[B
    :cond_1
    const-string v6, "-----BEGIN PRIVATE KEY-----\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 303
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v2, :cond_2

    .line 304
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 306
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 293
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "value":[B
    :cond_3
    :try_start_2
    array-length v6, v5

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->PEM_DEFAULT_LENGTH:I

    rem-int/2addr v6, v7

    invoke-virtual {v3, v5, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 296
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->TYPE_CERT:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 297
    const-string v6, "-----END CERTIFICATE-----\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 300
    :goto_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->CA_CERT_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".pem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->setSecuredAccess(Ljava/lang/String;)V

    move-object v2, v3

    .line 307
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 299
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    const-string v6, "-----END PRIVATE KEY-----\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 302
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "value":[B
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    goto :goto_3
.end method
