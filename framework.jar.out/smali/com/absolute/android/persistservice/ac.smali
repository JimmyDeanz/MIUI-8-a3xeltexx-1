.class public abstract Lcom/absolute/android/persistservice/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected c:Ljava/util/Hashtable;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/absolute/android/persistservice/v;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/absolute/android/persistservice/y;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/absolute/android/persistservice/ac;->d:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    .line 89
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v5, 0x24

    const/16 v6, 0x18

    const/4 v2, 0x0

    .line 254
    monitor-enter p0

    .line 261
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 262
    const/16 v0, 0x24

    :try_start_1
    new-array v0, v0, [B

    .line 263
    const/4 v1, 0x0

    const/16 v3, 0x24

    invoke-virtual {v4, v0, v1, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_a

    .line 264
    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 266
    const/4 v3, 0x0

    const/16 v5, 0x18

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ne v3, v6, :cond_a

    .line 269
    const/4 v3, 0x2

    const-string v5, "DESede/CBC/PKCS5Padding"

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v3, v5, v6}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 271
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v4, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 272
    :try_start_2
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 273
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 274
    if-eqz v0, :cond_0

    .line 275
    iput-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :cond_0
    move-object v2, v3

    .line 280
    :goto_0
    if-nez v0, :cond_9

    .line 281
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Cannot read data file - unexpected format / corrupt."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 284
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 285
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 294
    :cond_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->read()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 298
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 305
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 307
    :try_start_7
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 311
    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    .line 313
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 288
    :cond_4
    :goto_5
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 254
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 298
    :cond_5
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 305
    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    .line 307
    :try_start_b
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 311
    :cond_7
    :goto_7
    if-eqz v4, :cond_8

    .line 313
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 317
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 308
    :catch_1
    move-exception v1

    goto :goto_4

    .line 314
    :catch_2
    move-exception v1

    goto :goto_5

    .line 299
    :catch_3
    move-exception v1

    .line 300
    :try_start_d
    iget-object v2, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception closing persisted file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in loadNewVersion(). Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    .line 288
    :cond_9
    if-eqz v1, :cond_6

    .line 294
    :goto_9
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->read()I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v0

    if-eq v0, v7, :cond_5

    goto :goto_9

    .line 308
    :catch_4
    move-exception v0

    goto :goto_7

    .line 314
    :catch_5
    move-exception v0

    goto :goto_8

    .line 299
    :catch_6
    move-exception v0

    .line 300
    :try_start_f
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing persisted file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in loadNewVersion(). Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_6

    .line 288
    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catchall_4
    move-exception v0

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2

    :catchall_6
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_2

    .line 284
    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto/16 :goto_1

    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1

    :catch_a
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1

    :cond_a
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_0
.end method

.method private a()[B
    .locals 2

    .prologue
    .line 432
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 433
    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 434
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 435
    return-object v1
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()[B
    .locals 3

    .prologue
    .line 461
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string v1, "LENOVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const-string v0, "Lenovo"

    .line 466
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    const-string v0, "0EB8B69D04F2451E8B59C47D"

    .line 482
    const-string v0, "0EB8B69D04F2451E8B59C47D"

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/absolute/android/persistservice/y;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    .line 98
    return-void
.end method

.method protected abstract c()V
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/ac;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 391
    if-ne p0, p1, :cond_1

    .line 392
    const/4 v0, 0x1

    .line 410
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    instance-of v1, p1, Lcom/absolute/android/persistservice/ac;

    if-eqz v1, :cond_0

    .line 402
    check-cast p1, Lcom/absolute/android/persistservice/ac;

    .line 406
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v2, p1, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 410
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/ac;->k(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public abstract i(Ljava/lang/String;)Z
.end method

.method protected declared-synchronized j(Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    monitor-enter p0

    .line 126
    const/4 v9, 0x0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ac;->b()Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ac;->a()[B

    move-result-object v6

    .line 139
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->d:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 140
    const/4 v3, 0x1

    const-string v7, "Absolute_PersistedStore"

    invoke-virtual {v0, v3, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 141
    :try_start_1
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_6

    move v3, v1

    .line 144
    :goto_0
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 145
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v10, 0x0

    const/16 v11, 0x24

    invoke-virtual {v7, v0, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 146
    const/4 v0, 0x0

    const/16 v10, 0x18

    invoke-virtual {v7, v6, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 149
    const/4 v0, 0x1

    const-string v10, "DESede/CBC/PKCS5Padding"

    invoke-static {v6, v0, v10, v5}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 151
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v7, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 152
    :try_start_4
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 153
    :try_start_5
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 155
    const/4 v0, 0x1

    .line 166
    if-eqz v5, :cond_1

    .line 168
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 175
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 177
    :try_start_7
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 182
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 184
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 188
    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 189
    :try_start_9
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_4
    iget-object v2, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    if-eqz v2, :cond_5

    .line 197
    iget-object v2, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v2, p1, v0, v3}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    move v0, v1

    .line 162
    :goto_4
    monitor-exit p0

    return v0

    :cond_6
    move v3, v2

    .line 143
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    .line 159
    :goto_5
    :try_start_a
    iget-object v7, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to write persisted data to file: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " Exception:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 161
    const/4 v0, 0x0

    .line 166
    if-eqz v3, :cond_7

    .line 168
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 175
    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 177
    :try_start_c
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 182
    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 184
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 188
    :cond_9
    :goto_8
    if-eqz v6, :cond_a

    .line 189
    :try_start_e
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 190
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_a
    iget-object v3, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    if-eqz v3, :cond_b

    .line 197
    iget-object v3, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v3, p1, v0, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_b
    move v0, v2

    .line 162
    goto :goto_4

    .line 166
    :catchall_0
    move-exception v0

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    :goto_9
    if-eqz v4, :cond_c

    .line 168
    :try_start_f
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 175
    :cond_c
    :goto_a
    if-eqz v6, :cond_d

    .line 177
    :try_start_10
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 182
    :cond_d
    :goto_b
    if-eqz v7, :cond_e

    .line 184
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 188
    :cond_e
    :goto_c
    if-eqz v8, :cond_f

    .line 189
    :try_start_12
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 190
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_f
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    if-eqz v1, :cond_10

    .line 197
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v1, p1, v9, v2}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V

    .line 166
    :cond_10
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 120
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :catch_1
    move-exception v1

    .line 170
    :try_start_13
    iget-object v3, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing persisted file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in savetoPath(). Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 178
    :catch_2
    move-exception v1

    goto :goto_b

    .line 185
    :catch_3
    move-exception v1

    goto :goto_c

    .line 169
    :catch_4
    move-exception v3

    .line 170
    iget-object v7, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception closing persisted file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in savetoPath(). Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 178
    :catch_5
    move-exception v3

    goto/16 :goto_7

    .line 185
    :catch_6
    move-exception v3

    goto/16 :goto_8

    .line 169
    :catch_7
    move-exception v2

    .line 170
    iget-object v4, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception closing persisted file: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " in savetoPath(). Exception:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_1

    .line 178
    :catch_8
    move-exception v2

    goto/16 :goto_2

    .line 185
    :catch_9
    move-exception v2

    goto/16 :goto_3

    .line 166
    :catchall_2
    move-exception v0

    move-object v6, v4

    move-object v7, v4

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move v2, v3

    move-object v6, v4

    move-object v7, v4

    goto/16 :goto_9

    :catchall_4
    move-exception v0

    move v2, v3

    move-object v6, v4

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    move v2, v3

    goto/16 :goto_9

    :catchall_6
    move-exception v0

    move v2, v3

    move-object v4, v5

    goto/16 :goto_9

    :catchall_7
    move-exception v0

    move v2, v1

    move-object v7, v5

    move-object v8, v6

    move-object v6, v4

    move-object v4, v3

    goto/16 :goto_9

    .line 158
    :catch_a
    move-exception v0

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move-object v6, v8

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move v1, v3

    move-object v5, v4

    move-object v6, v8

    move-object v3, v4

    goto/16 :goto_5

    :catch_c
    move-exception v0

    move v1, v3

    move-object v5, v7

    move-object v6, v8

    move-object v3, v4

    goto/16 :goto_5

    :catch_d
    move-exception v0

    move v1, v3

    move-object v5, v7

    move-object v3, v4

    move-object v4, v6

    move-object v6, v8

    goto/16 :goto_5

    :catch_e
    move-exception v0

    move v1, v3

    move-object v4, v6

    move-object v3, v5

    move-object v6, v8

    move-object v5, v7

    goto/16 :goto_5
.end method

.method protected declared-synchronized k(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 219
    monitor-enter p0

    const/4 v1, 0x0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->d:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 223
    const/4 v2, 0x1

    const-string v3, "Absolute_PersistedStore"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 226
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ac;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    if-eqz v1, :cond_0

    .line 233
    :try_start_1
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    :cond_0
    monitor-exit p0

    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 233
    :try_start_3
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 232
    :cond_1
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized l(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 330
    monitor-enter p0

    .line 335
    :try_start_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ac;->d()[B

    move-result-object v0

    const/4 v1, 0x2

    const-string v3, "DESede/CBC/PKCS5Padding"

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ac;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 337
    new-instance v3, Ljavax/crypto/CipherInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 338
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 339
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 340
    if-eqz v0, :cond_0

    .line 341
    iput-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    .line 344
    :cond_0
    if-nez v0, :cond_7

    .line 345
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cannot read data file in old format."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 348
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 349
    :goto_0
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 352
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 358
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->read()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 362
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 369
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 371
    :try_start_5
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 352
    :cond_3
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 330
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 362
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 369
    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    .line 371
    :try_start_8
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 375
    :cond_6
    :goto_5
    monitor-exit p0

    return-void

    .line 372
    :catch_1
    move-exception v1

    goto :goto_3

    .line 363
    :catch_2
    move-exception v1

    .line 364
    :try_start_9
    iget-object v2, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing persisted file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in loadOldVersion(). Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 352
    :cond_7
    if-eqz v1, :cond_5

    .line 358
    :goto_6
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->read()I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v0

    if-eq v0, v5, :cond_4

    goto :goto_6

    .line 372
    :catch_3
    move-exception v0

    goto :goto_5

    .line 363
    :catch_4
    move-exception v0

    .line 364
    :try_start_b
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception closing persisted file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in loadOldVersion(). Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 352
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    .line 348
    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_0
.end method
