.class public Landroid/os/storage/sensitive/SensitiveDataProvider;
.super Ljava/lang/Object;
.source "SensitiveDataProvider.java"


# static fields
.field public static final DB_READ:I = 0x1

.field public static final DB_WRITE:I = 0x2

.field private static final DEBUG:Z = false

.field private static final FLAG_SIZE:I = 0x4


# instance fields
.field private TAG:Ljava/lang/String;

.field private client_columns:Ljava/lang/String;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

.field private insert_columns:Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field private read_columns:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "LSManager.SensitiveDataProvider"

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    .line 16
    const-string/jumbo v0, "name"

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->client_columns:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "uuid, flags, client_id, dek"

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->insert_columns:Ljava/lang/String;

    .line 21
    const-string v0, "flags, dek"

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->read_columns:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->mCtx:Landroid/content/Context;

    .line 39
    const-string v0, "Constructing SensitiveDataProvider..."

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 40
    if-nez p1, :cond_0

    .line 41
    const-string v0, "context is null in SensitiveDataProvider!!!... =/"

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 43
    :cond_0
    new-instance v0, Landroid/os/storage/sensitive/DBOpenHelper;

    invoke-direct {v0, p1}, Landroid/os/storage/sensitive/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    .line 44
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    if-nez v0, :cond_1

    .line 45
    const-string v0, "dbHelper is NULL."

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 47
    :cond_1
    iput-object p1, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->mCtx:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->mCtx:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 49
    const-string/jumbo v0, "mCtx is NULL!!!... =/"

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 51
    :cond_2
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "LogString"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "close"

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    invoke-virtual {v0}, Landroid/os/storage/sensitive/DBOpenHelper;->close()V

    .line 76
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "client"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 256
    const-string v6, "delete"

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 257
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v3

    .line 259
    :cond_1
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_0

    .line 261
    const-wide/16 v4, 0x0

    .line 262
    .local v4, "row":J
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT _id FROM clients WHERE name=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 264
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v4, v6

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM data WHERE uuid=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "client_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "delSql":Ljava/lang/String;
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 276
    .local v2, "delStm":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v6

    int-to-long v4, v6

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Affected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 278
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 279
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 268
    .end local v1    # "delSql":Ljava/lang/String;
    .end local v2    # "delStm":Landroid/database/sqlite/SQLiteStatement;
    :cond_2
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v7, "Client not found."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public drop()V
    .locals 2

    .prologue
    .line 286
    const-string v0, "drop"

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    invoke-virtual {v1}, Landroid/os/storage/sensitive/DBOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 288
    return-void
.end method

.method public get_keys_by_flag(J)[B
    .locals 9
    .param p1, "flags"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    const-string v3, "get_keys_by_flag"

    invoke-direct {p0, v3}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    const-string v3, "database is not opened..."

    invoke-direct {p0, v3}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-object v2

    .line 84
    :cond_0
    iget-object v3, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT uuid,dek FROM data WHERE flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 87
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    const-string v2, "cursor error"

    invoke-direct {p0, v2}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 89
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 90
    new-array v2, v6, [B

    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xc

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 95
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 97
    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 98
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 100
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto/16 :goto_0
.end method

.method public get_keys_by_flag_and_uuid(JLjava/lang/String;)[B
    .locals 9
    .param p1, "flags"    # J
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    const-string v3, "get_keys_by_flag_and_uuid"

    invoke-direct {p0, v3}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    const-string v3, "database is not opened..."

    invoke-direct {p0, v3}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-object v2

    .line 112
    :cond_0
    iget-object v3, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT uuid,dek FROM data WHERE flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "uuid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 116
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    const-string v2, "cursor error"

    invoke-direct {p0, v2}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 118
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    new-array v2, v6, [B

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xc

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 126
    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 127
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 128
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 129
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto/16 :goto_0
.end method

.method public open(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "open with mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 55
    packed-switch p1, :pswitch_data_0

    .line 63
    :goto_0
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const-string v0, "database is not opened..."

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 65
    const-string v0, "BOOM is expected, so humbly leaving..."

    invoke-direct {p0, v0}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 71
    :cond_0
    :goto_1
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    invoke-virtual {v0}, Landroid/os/storage/sensitive/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->dbHelper:Landroid/os/storage/sensitive/DBOpenHelper;

    invoke-virtual {v0}, Landroid/os/storage/sensitive/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PRAGMA foreign_keys = ON;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .param p1, "client"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 167
    const-string/jumbo v7, "read"

    invoke-direct {p0, v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 168
    iget-object v7, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 169
    const-string v7, "database is not opened..."

    invoke-direct {p0, v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    move-object v1, v6

    .line 195
    :goto_0
    return-object v1

    .line 172
    :cond_0
    const-wide/16 v4, 0x0

    .line 173
    .local v4, "row":J
    const/4 v1, 0x0

    .line 174
    .local v1, "key":[B
    iget-object v7, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT _id FROM clients WHERE name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 176
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 177
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v4, v7

    .line 183
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 184
    iget-object v7, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->read_columns:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " FROM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " WHERE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "uuid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "client_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 189
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 190
    .local v2, "flags":J
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 194
    .end local v2    # "flags":J
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 179
    :cond_1
    iget-object v7, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v8, "Client not found."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, v6

    .line 181
    goto/16 :goto_0

    .line 192
    :cond_2
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v7, "Record not found."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public update_keys([B)V
    .locals 8
    .param p1, "keys"    # [B

    .prologue
    .line 136
    const-string/jumbo v6, "update_keys"

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_0

    .line 138
    const-string v6, "database is not opened..."

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 142
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 144
    .local v1, "cntr":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Count of keys: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    new-array v2, v6, [B

    .line 147
    .local v2, "is":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ID len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    new-array v3, v6, [B

    .line 150
    .local v3, "kd":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE data SET dek=?, flags=0 WHERE uuid=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "stmt_str":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update statement "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 156
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 157
    .local v4, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 158
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v6

    if-gtz v6, :cond_2

    .line 159
    iget-object v6, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v7, "Update failed."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 162
    if-gtz v1, :cond_1

    goto/16 :goto_0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;J[B)Z
    .locals 13
    .param p1, "client"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "key"    # [B

    .prologue
    .line 199
    const-string/jumbo v8, "write"

    invoke-direct {p0, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 200
    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-nez v8, :cond_0

    .line 201
    const-string v8, "database is not opened..."

    invoke-direct {p0, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 202
    const/4 v8, 0x0

    .line 252
    :goto_0
    return v8

    .line 204
    :cond_0
    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    const-string v8, "database is read only..."

    invoke-direct {p0, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 206
    const/4 v8, 0x0

    goto :goto_0

    .line 208
    :cond_1
    const-wide/16 v6, 0x0

    .line 209
    .local v6, "row":J
    const/4 v4, 0x0

    .line 210
    .local v4, "insStm":Landroid/database/sqlite/SQLiteStatement;
    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT _id FROM clients WHERE name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    const-string v11, ""

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 212
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 213
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v6, v8

    .line 214
    const-string v8, "Client already exists."

    invoke-direct {p0, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 215
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT into data("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->insert_columns:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") VALUES(?,?,?,?);"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "writeSql":Ljava/lang/String;
    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 237
    const/4 v8, 0x1

    invoke-virtual {v4, v8, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 238
    const/4 v8, 0x2

    move-wide/from16 v0, p3

    invoke-virtual {v4, v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 239
    const/4 v8, 0x3

    invoke-virtual {v4, v8, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 240
    const/4 v8, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v4, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 242
    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 248
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_4

    .line 249
    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v9, "Client add error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 217
    .end local v5    # "writeSql":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 218
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT into clients("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->client_columns:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") VALUES(?);"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 220
    .restart local v5    # "writeSql":Ljava/lang/String;
    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 221
    const/4 v8, 0x1

    const-string v9, "."

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 223
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v6

    .line 224
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 225
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_2

    .line 231
    const-string/jumbo v8, "row error"

    invoke-direct {p0, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->debugLog(Ljava/lang/String;)V

    .line 232
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 226
    :catch_0
    move-exception v3

    .line 227
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 228
    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v9, "Client add error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    .line 244
    .restart local v3    # "e":Landroid/database/sqlite/SQLiteException;
    iget-object v8, p0, Landroid/os/storage/sensitive/SensitiveDataProvider;->TAG:Ljava/lang/String;

    const-string v9, "Record add error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 246
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 252
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0
.end method
