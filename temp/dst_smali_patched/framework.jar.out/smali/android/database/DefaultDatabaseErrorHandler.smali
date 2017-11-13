.class public final Landroid/database/DefaultDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDatabaseErrorHandler"


# instance fields
.field private err_msg:[Ljava/lang/String;

.field private err_num:[I

.field private isHandling:Z

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->err_num:[I

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ".corrupt"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, ".back"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->err_msg:[Ljava/lang/String;

    const-string v0, ".unknown"

    iput-object v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    return-void

    :array_0
    .array-data 4
        0xb
        0x1a
    .end array-data
.end method

.method private backCorruption(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-string v2, ":memory:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "DefaultDatabaseErrorHandler"

    const-string v3, "!@ Corruption in memory DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "DefaultDatabaseErrorHandler"

    const-string v3, "!@ DB Corruption has happened before this"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DefaultDatabaseErrorHandler"

    const-string v3, "!@ File delete failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e2":Ljava/lang/Exception;
    const-string v2, "DefaultDatabaseErrorHandler"

    const-string v3, "!@ openDatabase - Exception during copying and renaming"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteDatabaseFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const-string v1, ":memory:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "DefaultDatabaseErrorHandler"

    const-string v2, "!@ Specified file is memory DB"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "DefaultDatabaseErrorHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting the database file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DefaultDatabaseErrorHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17
    .param p1, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    if-eqz v14, :cond_0

    const-string v14, "DefaultDatabaseErrorHandler"

    const-string v15, "Database corruption is already handling."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v10

    .local v10, "path":Ljava/lang/String;
    const-string v14, "DefaultDatabaseErrorHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Corruption reported by sqlite on database: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getCorruptCode()I

    move-result v4

    .local v4, "err_code":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->err_num:[I

    array-length v14, v14

    if-ge v5, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->err_num:[I

    aget v14, v14, v5

    if-ne v14, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->err_msg:[Ljava/lang/String;

    aget-object v14, v14, v5

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "DefaultDatabaseErrorHandler"

    const-string v15, "!@ dbObj has been closed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v14, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "DefaultDatabaseErrorHandler"

    const-string v15, "!@ Integrity Check for corrupted DB file gets OK as result"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".mark"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "DefaultDatabaseErrorHandler"

    const-string v15, "!@ Make .mark file to indicate Integrity is Ok"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".mark"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v14, "DefaultDatabaseErrorHandler"

    const-string v15, "!@ Delete old .mark file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".mark"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".mark2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    :goto_3
    const/4 v2, 0x0

    .local v2, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v14, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .local v9, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "DefaultDatabaseErrorHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "!@ Back up corrupted DB File : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v14, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v14, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    goto/16 :goto_0

    .end local v2    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_5
    const/4 v3, 0x0

    .local v3, "errInfo":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "indexName":Ljava/lang/String;
    const/4 v11, -0x1

    .local v11, "pos1":I
    const/4 v12, -0x1

    .local v12, "pos2":I
    const/4 v13, -0x1

    .local v13, "pos3":I
    const/4 v1, 0x0

    .local v1, "VacuumTried":Z
    :try_start_3
    const-string v14, "DefaultDatabaseErrorHandler"

    const-string v15, "!@ Integrity Check failed for corrupted DB file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v8, 0x0

    .local v8, "needContinue":Z
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getIntegrityErrorInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v14, " index "

    invoke-virtual {v3, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    const-string v14, " is never used"

    invoke-virtual {v3, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    const-string v14, "freelist leaf count too big on page"

    invoke-virtual {v3, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    if-gtz v12, :cond_7

    if-ltz v13, :cond_8

    :cond_7
    if-nez v1, :cond_8

    const-string v14, "VACUUM;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    goto/16 :goto_0

    :cond_8
    if-lez v11, :cond_9

    add-int/lit8 v14, v11, 0x7

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, " "

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "REINDEX "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    goto/16 :goto_0

    :cond_9
    if-nez v8, :cond_6

    goto/16 :goto_2

    .end local v1    # "VacuumTried":Z
    .end local v3    # "errInfo":Ljava/lang/String;
    .end local v7    # "indexName":Ljava/lang/String;
    .end local v8    # "needContinue":Z
    .end local v11    # "pos1":I
    .end local v12    # "pos2":I
    .end local v13    # "pos3":I
    :catch_1
    move-exception v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    goto/16 :goto_3

    :catchall_0
    move-exception v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    throw v14

    .restart local v2    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_a
    :try_start_5
    const-string v14, "DefaultDatabaseErrorHandler"

    const-string v15, "!@ Failed to get attachedDbs"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    goto/16 :goto_0

    :catchall_1
    move-exception v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/database/DefaultDatabaseErrorHandler;->isHandling:Z

    throw v14
.end method
