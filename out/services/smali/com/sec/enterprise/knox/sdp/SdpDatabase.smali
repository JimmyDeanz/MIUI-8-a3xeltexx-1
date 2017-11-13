.class public Lcom/sec/enterprise/knox/sdp/SdpDatabase;
.super Ljava/lang/Object;
.source "SdpDatabase.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SdpDatabase"

.field private static final runAllConvert:Z


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mEngineId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mEngineId:I

    .line 48
    invoke-direct {p0}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->enforcePermission()V

    .line 49
    iput-object p1, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mAlias:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mAlias:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 51
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_0

    .line 55
    new-instance v1, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v1

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mEngineId:I

    .line 59
    return-void
.end method

.method private enforcePermission()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    .line 293
    const/16 v1, -0x63

    .line 294
    .local v1, "res":I
    const-string/jumbo v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .line 296
    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_0

    .line 298
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Lcom/sec/sdp/ISdpManagerService;->isLicensed(Ljava/lang/String;)I

    move-result v1

    .line 299
    if-eqz v1, :cond_0

    .line 300
    new-instance v3, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "SdpDatabase"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private formSensitiveColumnStmt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "engineId"    # I
    .param p2, "tblName"    # Ljava/lang/String;
    .param p3, "columns"    # Ljava/lang/String;

    .prologue
    .line 190
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    const/4 v1, 0x0

    .line 201
    :goto_0
    return-object v1

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "table="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";columns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string/jumbo v1, "engine_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private formSensitivePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dbAlias"    # Ljava/lang/String;
    .param p2, "tblName"    # Ljava/lang/String;
    .param p3, "cols"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    iget v3, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mEngineId:I

    invoke-direct {p0, v3, p2, p3}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->formSensitiveColumnStmt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "tmpstmt":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 182
    const/4 v1, 0x0

    .line 185
    :goto_0
    return-object v1

    .line 183
    :cond_0
    if-nez p1, :cond_1

    const-string v0, ""

    .line 184
    .local v0, "dbaliasprefix":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pragma "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "set_sensitive_columns(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "stmt":Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v0    # "dbaliasprefix":Ljava/lang/String;
    .end local v1    # "stmt":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :try_start_0
    const-string/jumbo v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .line 312
    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 317
    .end local v2    # "service":Lcom/sec/sdp/ISdpManagerService;
    :cond_0
    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "SdpDatabase"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public isSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbAlias"    # Ljava/lang/String;
    .param p3, "tblName"    # Ljava/lang/String;
    .param p4, "column"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 143
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_0

    const-string v5, "SdpDatabase"

    const-string/jumbo v6, "isSensitive :: invalid DB"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return v4

    .line 144
    :cond_0
    iget v5, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mEngineId:I

    if-gez v5, :cond_1

    const-string v5, "SdpDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSensitive :: invalid engine "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mAlias:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_1
    if-nez p2, :cond_5

    :try_start_0
    const-string v1, ""

    .line 155
    .local v1, "dbaliasprefix":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pragma "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "get_sensitive_columns("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    .line 161
    const/4 v2, 0x1

    .line 170
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :cond_4
    :goto_3
    move v4, v2

    .line 174
    goto :goto_0

    .line 154
    :cond_5
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 164
    .restart local v1    # "dbaliasprefix":Ljava/lang/String;
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 166
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 167
    .local v3, "x":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    const/4 v2, 0x0

    .line 170
    if-eqz v0, :cond_4

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 170
    .end local v3    # "x":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_7

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4
.end method

.method public setSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbAlias"    # Ljava/lang/String;
    .param p3, "tblName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;
        }
    .end annotation

    .prologue
    .local p4, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v1, "cols":Ljava/lang/StringBuilder;
    if-nez p1, :cond_1

    const-string v8, "SdpDatabase"

    const-string/jumbo v9, "setSensitive :: invalid DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    return v7

    .line 84
    :cond_1
    iget v9, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mEngineId:I

    if-gez v9, :cond_2

    const-string v8, "SdpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSensitive :: invalid engine "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mAlias:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_2
    iget-object v9, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mAlias:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v5

    .line 87
    .local v5, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v5, :cond_3

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v9

    if-ne v9, v8, :cond_4

    .line 88
    :cond_3
    const-string v7, "SdpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSensitive failed, engine is locked!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mAlias:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v7, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;

    invoke-direct {v7}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;-><init>()V

    throw v7

    .line 92
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 93
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "col":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v4, v9, :cond_5

    .line 96
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "col":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    .line 102
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 103
    const-string v8, "SdpDatabase"

    const-string v9, "Error : DB is readonly. setSensitiveDBPolicy require write permission for DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 107
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, p3, v9}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->formSensitivePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "stmt":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "select count(*) from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 112
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 113
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_8

    .line 114
    const-string v9, "VACUUM"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    :cond_8
    if-eqz v2, :cond_9

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    move v7, v8

    .line 119
    goto/16 :goto_0
.end method

.method public updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;I)Z
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "state"    # I

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateStateToDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbAlias"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    const/4 v5, 0x0

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_1

    const-string v6, "SdpDatabase"

    const-string/jumbo v7, "updateStateToDB :: invalid DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    :goto_0
    return v5

    .line 225
    :cond_1
    iget-object v6, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mAlias:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v3

    .line 226
    .local v3, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v3, :cond_2

    .line 227
    const-string v6, "SdpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateStateToDB :: can\'t find engine "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->mAlias:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v6

    if-eq v6, p3, :cond_3

    .line 232
    const-string v6, "SdpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateStateToDB :: invalid state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (current stat : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_3
    :try_start_0
    const-string v6, "SdpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSDPStateToDB called with dbalias = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sdpState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-nez p2, :cond_4

    const-string v1, ""

    .line 240
    .local v1, "dbaliasprefix":Ljava/lang/String;
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 263
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 239
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 242
    .restart local v1    # "dbaliasprefix":Ljava/lang/String;
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pragma "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sdp_locked;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 264
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 245
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dbaliasprefix":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pragma "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sdp_unlocked;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    const/4 v4, 0x1

    .line 250
    .local v4, "rows":I
    :goto_3
    if-lez v4, :cond_6

    .line 251
    const-string v6, "SdpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calling next : pragma runoneconvert  in sdpState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pragma "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sdp_run_one_convert"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 254
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 256
    :cond_5
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 257
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 259
    :cond_6
    const-string v6, "SdpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DONE calling all pragma runoneconvert  in sdpState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
