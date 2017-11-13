.class public Lcom/android/server/enterprise/utils/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateUtil"


# instance fields
.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mRandom:Ljava/util/Random;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    .line 110
    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 111
    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 120
    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    .line 122
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    .line 123
    return-void
.end method

.method public static convertPemToX509([B)Ljava/util/List;
    .locals 7
    .param p0, "certBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz p0, :cond_0

    .line 503
    :try_start_0
    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 512
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 513
    const-string v4, "CertificateUtil"

    const-string v5, "Could not convert any certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 516
    :cond_1
    return-object v3

    .line 505
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v1

    .line 506
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CertificateUtil"

    const-string v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 508
    .local v0, "cer":Ljava/security/cert/CertificateException;
    const-string v4, "CertificateUtil"

    const-string v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    .end local v0    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v2

    .line 510
    .local v2, "ile":Ljava/lang/IllegalArgumentException;
    const-string v4, "CertificateUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertStoreTypeToSystemUidAsUser(II)I
    .locals 2
    .param p0, "storeType"    # I
    .param p1, "userId"    # I

    .prologue
    .line 417
    const/4 v0, -0x1

    .line 418
    .local v0, "ret":I
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 419
    const v1, 0x186a0

    mul-int/2addr v1, p1

    add-int/lit16 v0, v1, 0x3e8

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 421
    const/16 v0, 0x3f2

    goto :goto_0
.end method

.method public static convertStoreTypeToUid(I)I
    .locals 2
    .param p0, "storeType"    # I

    .prologue
    .line 390
    const/4 v0, -0x1

    .line 391
    .local v0, "ret":I
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 392
    const/4 v0, -0x1

    .line 396
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 394
    const/16 v0, 0x3f2

    goto :goto_0
.end method

.method public static convertToX509List(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "certInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/CertificateInfo;

    .line 537
    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 539
    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_0
    return-object v2
.end method

.method public static convertX509ListToPem(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz p0, :cond_0

    .line 544
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 546
    .local v0, "array":[Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 555
    .end local v0    # "array":[Ljava/security/cert/X509Certificate;
    :goto_0
    return-object v4

    .line 547
    .restart local v0    # "array":[Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v2

    .line 548
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "CertificateUtil"

    const-string v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .end local v0    # "array":[Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 549
    .restart local v0    # "array":[Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v1

    .line 550
    .local v1, "cer":Ljava/security/cert/CertificateException;
    const-string v4, "CertificateUtil"

    const-string v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 551
    .end local v1    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v3

    .line 552
    .local v3, "ile":Ljava/lang/IllegalArgumentException;
    const-string v4, "CertificateUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static convertX509ToPem(Ljava/security/cert/X509Certificate;)[B
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 521
    const/4 v0, 0x0

    .line 523
    .local v0, "certBytes":[B
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 531
    :goto_0
    return-object v2

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "CertificateUtil"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 528
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v3, "CertificateUtil"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private extractPkcs12([BLjava/lang/String;I)Z
    .locals 10
    .param p1, "data"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 319
    if-nez p2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v6

    .line 323
    :cond_1
    :try_start_0
    const-string v7, "PKCS12"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 324
    .local v4, "keystore":Ljava/security/KeyStore;
    new-instance v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 325
    .local v5, "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 327
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 328
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 331
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 332
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {v4, v0, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 337
    .local v3, "entry":Ljava/security/KeyStore$Entry;
    instance-of v7, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v7, :cond_2

    .line 338
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local v3    # "entry":Ljava/security/KeyStore$Entry;
    invoke-direct {p0, v3, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 341
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "keystore":Ljava/security/KeyStore;
    .end local v5    # "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CertificateUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "extractPkcs12(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPersonaManagerService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Landroid/os/PersonaManager;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z
    .locals 20
    .param p1, "entry"    # Ljava/security/KeyStore$PrivateKeyEntry;
    .param p2, "userId"    # I

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    const-string v17, "certificate_policy"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 352
    .local v9, "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_start_1
    move/from16 v0, p2

    invoke-interface {v9, v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 353
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 354
    .local v5, "arrayChain":[Ljava/security/cert/Certificate;
    new-instance v14, Ljava/util/ArrayList;

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    .local v14, "listChain":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    move-object v4, v5

    .local v4, "arr$":[Ljava/security/cert/Certificate;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v8, v4, v12

    .line 356
    .local v8, "cert":Ljava/security/cert/Certificate;
    new-instance v17, Landroid/app/enterprise/CertificateInfo;

    check-cast v8, Ljava/security/cert/X509Certificate;

    .end local v8    # "cert":Ljava/security/cert/Certificate;
    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 358
    :cond_0
    move/from16 v0, p2

    invoke-interface {v9, v14, v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    move-result v16

    .line 359
    .local v16, "resultCode":I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 360
    const-string v17, "CertificateUtil"

    const-string v18, "certificate failed during validation"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v17, "installer_module"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-interface {v9, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    const/16 v17, 0x0

    .line 385
    .end local v5    # "arrayChain":[Ljava/security/cert/Certificate;
    .end local v14    # "listChain":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v16    # "resultCode":I
    :goto_1
    monitor-exit p0

    return v17

    .line 366
    .end local v4    # "arr$":[Ljava/security/cert/Certificate;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :catch_0
    move-exception v11

    .line 367
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v17, "CertificateUtil"

    const-string v18, "Failed talking to certificate policy"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 373
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 375
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v10

    .line 376
    .local v10, "certs":[Ljava/security/cert/Certificate;
    const-string v17, "CertificateUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "# certs extracted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v10

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v7, Ljava/util/ArrayList;

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 378
    .local v7, "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object v4, v10

    .restart local v4    # "arr$":[Ljava/security/cert/Certificate;
    array-length v13, v4

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_3
    if-ge v12, v13, :cond_3

    aget-object v6, v4, v12

    .line 379
    .local v6, "c":Ljava/security/cert/Certificate;
    move-object v0, v6

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v8, v0

    .line 380
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 381
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 368
    .end local v4    # "arr$":[Ljava/security/cert/Certificate;
    .end local v6    # "c":Ljava/security/cert/Certificate;
    .end local v7    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v10    # "certs":[Ljava/security/cert/Certificate;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :catch_1
    move-exception v15

    .line 369
    .local v15, "nex":Ljava/lang/NullPointerException;
    const-string v17, "CertificateUtil"

    const-string v18, "Certificate policy not found"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 349
    .end local v9    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .end local v15    # "nex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 383
    .restart local v4    # "arr$":[Ljava/security/cert/Certificate;
    .restart local v7    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v9    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .restart local v10    # "certs":[Ljava/security/cert/Certificate;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    :cond_3
    :try_start_3
    const-string v17, "CertificateUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "# ca certs extracted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    const/16 v17, 0x1

    goto/16 :goto_1
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x0

    .line 304
    :try_start_0
    const-string v6, "2.5.29.19"

    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 305
    .local v0, "asn1EncodedBytes":[B
    if-nez v0, :cond_0

    .line 314
    .end local v0    # "asn1EncodedBytes":[B
    :goto_0
    return v5

    .line 308
    .restart local v0    # "asn1EncodedBytes":[B
    :cond_0
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 310
    .local v1, "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    .line 311
    .local v3, "octets":[B
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 312
    .local v4, "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 313
    .end local v0    # "asn1EncodedBytes":[B
    .end local v1    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v3    # "octets":[B
    .end local v4    # "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private parseCert([BI)Z
    .locals 12
    .param p1, "bytes"    # [B
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 259
    const/4 v7, 0x0

    .line 261
    .local v7, "ret":Z
    :try_start_0
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 262
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 266
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const-string v9, "certificate_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 269
    .local v3, "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_start_1
    invoke-interface {v3, p2}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 270
    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2, v0}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 271
    .local v2, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-interface {v3, v2, p2}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->validateCertificateAtInstallAsUser(Landroid/app/enterprise/CertificateInfo;I)I

    move-result v6

    .line 273
    .local v6, "resultCode":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 274
    const-string v9, "CertificateUtil"

    const-string v10, "certificate failed during validation"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v9, "installer_module"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v3, v9, v10, v11, p2}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 299
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .end local v6    # "resultCode":I
    :goto_0
    return v8

    .line 280
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :catch_0
    move-exception v4

    .line 281
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "CertificateUtil"

    const-string v9, "Failed talking to certificate policy"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 287
    const-string v8, "CertificateUtil"

    const-string/jumbo v9, "got a CA cert"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    const/4 v7, 0x1

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :goto_2
    move v8, v7

    .line 299
    goto :goto_0

    .line 282
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :catch_1
    move-exception v5

    .line 283
    .local v5, "nex":Ljava/lang/NullPointerException;
    const-string v8, "CertificateUtil"

    const-string v9, "Certificate policy not found"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 295
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .end local v5    # "nex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    .line 296
    .local v4, "e":Ljava/security/cert/CertificateException;
    const-string v8, "CertificateUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseCert(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v7, 0x0

    goto :goto_2

    .line 291
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :cond_1
    :try_start_3
    const-string v8, "CertificateUtil"

    const-string/jumbo v9, "got a user cert"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 293
    const/4 v7, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getAllUsersId()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v3, "usersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v0

    .line 481
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 482
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v3
.end method

.method public getAllUsersInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 491
    .local v0, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 493
    .local v2, "usersInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    return-object v2

    .line 493
    .end local v2    # "usersInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getRandomInt()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
    .locals 17
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "keystoreUid"    # I
    .param p6, "userId"    # I

    .prologue
    .line 144
    const/4 v10, 0x1

    .line 148
    .local v10, "ret":Z
    const-string v12, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 150
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([BI)Z

    move-result v12

    and-int/2addr v10, v12

    .line 158
    .end local v10    # "ret":Z
    :goto_0
    if-eqz v10, :cond_14

    .line 160
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 161
    and-int/lit8 v12, p5, 0x2

    if-eqz v12, :cond_5

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 163
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CACERT_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v14}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v15}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    and-int/2addr v10, v12

    .line 167
    .restart local v10    # "ret":Z
    goto :goto_1

    .line 151
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v12, ".p12"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "PKCS12"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 153
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v12

    and-int/2addr v10, v12

    goto :goto_0

    .line 155
    :cond_3
    and-int/lit8 v10, v10, 0x0

    .local v10, "ret":I
    goto :goto_0

    .line 168
    .end local v10    # "ret":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    const-string v12, "CertificateUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CaCerts put state for wifi keystore : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    and-int/lit8 v12, p5, 0x4

    if-eqz v12, :cond_7

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 172
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CACERT_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v14}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v14

    const/4 v15, 0x4

    move/from16 v0, p6

    invoke-static {v15, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    and-int/2addr v10, v12

    .line 176
    .local v10, "ret":Z
    goto :goto_2

    .line 177
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v10    # "ret":Z
    :cond_6
    const-string v12, "CertificateUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CaCerts put state for vpn and apps keystore : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    and-int/lit8 v12, p5, 0x1

    if-eqz v12, :cond_a

    .line 181
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/UserHandle;

    move/from16 v0, p6

    invoke-direct {v13, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v12, v13}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v9

    .line 184
    .local v9, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    .line 186
    .local v11, "service":Landroid/security/IKeyChainService;
    const/4 v5, 0x0

    .line 187
    .local v5, "cert":[B
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 188
    .local v4, "ca":Ljava/security/cert/X509Certificate;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/security/cert/Certificate;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v5

    .line 189
    invoke-interface {v11, v5}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    .line 192
    invoke-interface {v11, v5}, Landroid/security/IKeyChainService;->getCertificateAlias([B)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_4
    and-int/2addr v10, v12

    .line 193
    .restart local v10    # "ret":Z
    goto :goto_3

    .line 192
    .end local v10    # "ret":Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 195
    .end local v4    # "ca":Ljava/security/cert/X509Certificate;
    :cond_9
    :try_start_4
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 202
    .end local v5    # "cert":[B
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "service":Landroid/security/IKeyChainService;
    :cond_a
    :goto_5
    :try_start_5
    const-string v12, "CertificateUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CaCerts put state : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v12, :cond_f

    .line 205
    and-int/lit8 v12, p5, 0x2

    if-eqz v12, :cond_c

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRCERT_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v14}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v15}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    and-int/2addr v10, v12

    .line 210
    .restart local v10    # "ret":Z
    const-string v12, "CertificateUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UserCert put state for wifi keystore : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v10    # "ret":Z
    :cond_c
    and-int/lit8 v12, p5, 0x4

    if-eqz v12, :cond_d

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRCERT_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v14}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v14

    const/4 v15, 0x4

    move/from16 v0, p6

    invoke-static {v15, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    and-int/2addr v10, v12

    .line 217
    .restart local v10    # "ret":Z
    const-string v12, "CertificateUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UserCert put state for vpn and apps keystore : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v10    # "ret":Z
    :cond_d
    and-int/lit8 v12, p5, 0x1

    if-eqz v12, :cond_f

    const-string v12, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    const-string v12, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 222
    :cond_e
    and-int/lit8 v10, v10, 0x0

    .line 225
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v12, :cond_14

    .line 226
    and-int/lit8 v12, p5, 0x2

    if-eqz v12, :cond_11

    .line 227
    const/4 v7, 0x1

    .line 228
    .local v7, "flags":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v13}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 229
    const-string v12, "CertificateUtil"

    const-string v13, "Saving private key with FLAG_NONE for WIFI"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v7, 0x0

    .line 232
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRPKEY_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v14}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v15}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v15

    invoke-virtual {v12, v13, v14, v15, v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v12

    and-int/2addr v10, v12

    .line 235
    .restart local v10    # "ret":Z
    const-string v12, "CertificateUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UserPKey put state for wifi keystore : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v7    # "flags":I
    .end local v10    # "ret":Z
    :cond_11
    and-int/lit8 v12, p5, 0x4

    if-eqz v12, :cond_12

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRPKEY_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v14}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v14

    const/4 v15, 0x4

    move/from16 v0, p6

    invoke-static {v15, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v12

    and-int/2addr v10, v12

    .line 242
    .restart local v10    # "ret":Z
    const-string v12, "CertificateUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UserPKey put state for vpn and apps keystore : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v10    # "ret":Z
    :cond_12
    and-int/lit8 v12, p5, 0x1

    if-eqz v12, :cond_14

    const-string v12, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    const-string v12, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v12

    if-eqz v12, :cond_14

    .line 247
    :cond_13
    and-int/lit8 v10, v10, 0x0

    .line 254
    :cond_14
    :goto_6
    return v10

    .line 195
    .restart local v5    # "cert":[B
    .restart local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v11    # "service":Landroid/security/IKeyChainService;
    :catchall_0
    move-exception v12

    :try_start_6
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v12
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 197
    .end local v5    # "cert":[B
    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "service":Landroid/security/IKeyChainService;
    :catch_0
    move-exception v6

    .line 198
    .local v6, "e":Ljava/lang/AssertionError;
    :try_start_7
    const-string v12, "CertificateUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "installAsUser - is KeyChainService running for user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 199
    and-int/lit8 v10, v10, 0x0

    .restart local v10    # "ret":Z
    goto/16 :goto_5

    .line 250
    .end local v6    # "e":Ljava/lang/AssertionError;
    .end local v10    # "ret":Z
    :catch_1
    move-exception v6

    .line 251
    .local v6, "e":Ljava/lang/Exception;
    const-string v12, "CertificateUtil"

    const-string/jumbo v13, "install(): "

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public isGuestUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 467
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const/4 v1, 0x1

    .line 471
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendIntentToSettings(IZ)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "bootCompleted"    # Z

    .prologue
    .line 433
    if-eqz p2, :cond_2

    .line 434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 435
    .local v6, "token":J
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v4, "refreshUi":Landroid/content/Intent;
    const-string/jumbo v5, "edm.intent.action.REFRESH_UI"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-static {p1}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getPersonaManagerService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v3

    .line 448
    .local v3, "personaOwner":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v5, v4, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getPersonaManagerService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v2

    .line 453
    .local v2, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v2, :cond_1

    .line 454
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    .line 455
    .local v1, "persona":Landroid/content/pm/PersonaInfo;
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    iget v9, v1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v5, v4, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    .line 444
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "persona":Landroid/content/pm/PersonaInfo;
    .end local v2    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v3    # "personaOwner":I
    :cond_0
    move v3, p1

    .restart local v3    # "personaOwner":I
    goto :goto_0

    .line 460
    .restart local v2    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    .end local v2    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v3    # "personaOwner":I
    .end local v4    # "refreshUi":Landroid/content/Intent;
    .end local v6    # "token":J
    :cond_2
    return-void
.end method
