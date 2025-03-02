.class public Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;
.super Ljava/lang/Object;
.source "DBIntegrity.java"


# static fields
.field private static mInstance:Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbUpgradeActive:Z

.field private mOpActive:I

.field private mUpdateHmacPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mInstance:Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mContext:Landroid/content/Context;

    .line 45
    iput v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 46
    iput-boolean v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mDbUpgradeActive:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mUpdateHmacPending:Z

    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private dbFileExists()Z
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/OtpDatabase.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 245
    :cond_0
    const-string v4, "DBIntegrity::getHmacSHA1 - input string is null"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 246
    const/4 v4, 0x0

    .line 261
    :goto_0
    return-object v4

    .line 248
    :cond_1
    const/4 v1, 0x0

    .line 251
    .local v1, "mac":Ljavax/crypto/Mac;
    :try_start_0
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 252
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 253
    .local v3, "sk":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 254
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 261
    .local v2, "result":[B
    const/16 v4, 0x8

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 255
    .end local v2    # "result":[B
    .end local v3    # "sk":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBIntegrity::getHmacSHA1 - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 258
    const-string v4, ""

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 38
    const-class v1, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mInstance:Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "DBIntegrity::getInstance - New instance created"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mInstance:Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    .line 42
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mInstance:Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 217
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 218
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 222
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 224
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 226
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 227
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 231
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_0

    .line 232
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 233
    :cond_0
    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DBIntegrity::getStringFromFile - Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-object v7

    .line 229
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 231
    if-eqz v6, :cond_3

    .line 232
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 233
    :cond_3
    if-eqz v3, :cond_4

    .line 234
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 238
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 236
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 231
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v9

    goto :goto_1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private setTokenStateCorrupt()V
    .locals 9

    .prologue
    .line 184
    const-string v7, "DBIntegrity::setTokenStateCorrupt - ENTER"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 186
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getSqlDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 187
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v7}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    invoke-virtual {v7, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getAllEntries(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v5

    .line 188
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    if-eqz v5, :cond_1

    .line 189
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    .line 190
    .local v1, "d":Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    move-object v0, v1

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    move-object v6, v0

    .line 191
    .local v6, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    if-eqz v6, :cond_0

    .line 193
    const/16 v7, 0x303

    iput v7, v6, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenState:I

    .line 194
    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v1    # "d":Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    .end local v6    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    :catch_0
    move-exception v3

    .line 203
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DBIntegrity::setTokenStateCorrupt - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 205
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 198
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    :cond_1
    :try_start_1
    const-string v7, "DBIntegrity::setTokenStateCorrupt - getAllEntries returned NULL"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 201
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->update()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private declared-synchronized update()V
    .locals 3

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->dbFileExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const-string v1, "/data/system/OtpDatabase.db"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDbHmacKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "hmac":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DBIntegrity::update - hmac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->setOtpDbHmac(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v0    # "hmac":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    :try_start_1
    const-string v1, "DBIntegrity::update - DB file not found"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized verify()Z
    .locals 5

    .prologue
    .line 141
    monitor-enter p0

    const/4 v1, 0x0

    .line 143
    .local v1, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->dbFileExists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    const-string v3, "/data/system/OtpDatabase.db"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDbHmacKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "calculatedHmac":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getOtpDbHmac()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "storedHmac":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 149
    const-string v3, "DBIntegrity::verify - first time here."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const/4 v1, 0x0

    .line 165
    .end local v0    # "calculatedHmac":Ljava/lang/String;
    .end local v2    # "storedHmac":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 166
    const/4 v3, 0x1

    .line 169
    :goto_1
    monitor-exit p0

    return v3

    .line 152
    .restart local v0    # "calculatedHmac":Ljava/lang/String;
    .restart local v2    # "storedHmac":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    :cond_2
    const-string v3, "DBIntegrity::verify - calculated and stored hmac not match"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBIntegrity::verify - [calculatedHmac = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", storedHmac = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 156
    const/16 v1, 0x4ff

    goto :goto_0

    .line 159
    .end local v0    # "calculatedHmac":Ljava/lang/String;
    .end local v2    # "storedHmac":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getOtpDbHmac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 161
    const-string v3, "DBIntegrity::verify - DB file removed unexpectdly"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 162
    const/16 v1, 0x4ff

    goto :goto_0

    .line 168
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->setTokenStateCorrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    const/4 v3, 0x0

    goto :goto_1

    .line 141
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized endDbEdit()V
    .locals 6

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 81
    .local v1, "ste":Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".java"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "caller":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->update()V

    .line 86
    iget v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DBIntegrity::endDbEdit [Invoked From: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOpActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 80
    .end local v0    # "caller":Ljava/lang/String;
    .end local v1    # "ste":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized endDbUpgrade()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    const-string v0, "DBIntegrity::endDbUpgrade - ENTER"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mUpdateHmacPending:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mDbUpgradeActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDbUpgradeActive()Z
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mDbUpgradeActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mUpdateHmacPending:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->update()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mUpdateHmacPending:Z

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mDbUpgradeActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDbEdit()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 51
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 52
    .local v2, "ste":Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".java"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "caller":Ljava/lang/String;
    const/4 v1, 0x0

    .line 55
    .local v1, "ret":Z
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    if-ge v3, v7, :cond_1

    .line 57
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 58
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verify()Z

    move-result v1

    .line 59
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 66
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 67
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBIntegrity::startDbEdit - PASS [Invoked From: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOpActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_1
    monitor-exit p0

    return v1

    .line 61
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    if-lez v3, :cond_0

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBIntegrity::startDbEdit - FAIL [Invoked From: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOpActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 51
    .end local v0    # "caller":Ljava/lang/String;
    .end local v1    # "ret":Z
    .end local v2    # "ste":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized startDbUpgrade()V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    const-string v0, "DBIntegrity::startDbUpgrade - ENTER"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mDbUpgradeActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized verifyDbIntegrity()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 114
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 115
    .local v2, "ste":Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".java"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "caller":Ljava/lang/String;
    const/4 v1, 0x0

    .line 118
    .local v1, "ret":Z
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    if-ge v3, v7, :cond_1

    .line 120
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 121
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verify()Z

    move-result v1

    .line 122
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 129
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBIntegrity::verifyDbIntegrity - PASS [Invoked From: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOpActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_1
    monitor-exit p0

    return v1

    .line 124
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    if-lez v3, :cond_0

    .line 126
    const/4 v1, 0x1

    goto :goto_0

    .line 133
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBIntegrity::verifyDbIntegrity - FAIL [Invoked From: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOpActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 114
    .end local v0    # "caller":Ljava/lang/String;
    .end local v1    # "ret":Z
    .end local v2    # "ste":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
