.class public Lcom/android/sdp/SdpManager;
.super Ljava/lang/Object;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sdp/SdpManager$SensitiveDBPolicy;
    }
.end annotation


# static fields
.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final SDP_DECRYPT_FAIL_FLAG_EMPTY:I = 0x2

.field public static final SDP_DECRYPT_FAIL_FLAG_ERROR:I = 0x1

.field public static final SDP_DECRYPT_FAIL_FLAG_RAW:I = 0x3

.field public static final SDP_DECRYPT_FAIL_FLAG_TEXT:Ljava/lang/String; = "decrypt_fail_flag"

.field public static final SDP_ERR_NATIVE:I = -0x1

.field public static final SDP_ERR_REMOTE:I = -0x2

.field public static final SDP_ERR_VERSION_MISMATCH:I = -0x3

.field public static final SDP_FLAG_FULL:I = 0x2

.field public static final SDP_FLAG_MIGRATION_DEFAULT:I = 0x3

.field public static final SDP_FLAG_MINOR:I = 0x3

.field public static final SDP_FLAG_MODE_MINOR:I = 0x1

.field public static final SDP_FLAG_VAULT_ON:I = 0x2

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_RET_SUCCESS:I = 0x0

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_STATE_ACTIVE:I = 0x1

.field public static final SDP_STATE_BOOTED:I = 0x1

.field public static final SDP_STATE_ERROR:I = -0x1

.field public static final SDP_STATE_INACTIVE:I = 0x2

.field public static final SDP_STATUS_INVALID:I = -0x1

.field public static final SDP_STATUS_READY:I = 0x1

.field public static final SDP_STATUS_UPGRADING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SDP.SDK"

.field private static _instance:Lcom/android/sdp/SdpManager;

.field private static final runAllConvert:Z


# instance fields
.field mService:Lcom/sec/sdp/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/sdp/SdpManager;->_instance:Lcom/android/sdp/SdpManager;

    .line 91
    :try_start_0
    const-string/jumbo v0, "sdp_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sdp/SdpManager;->mService:Lcom/sec/sdp/ISdpManagerService;

    .line 85
    return-void
.end method

.method public static native Native_Sdp_ConvertToSensitiveDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_ConvertToSensitiveFile(Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_IsSensitiveColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_SetSensitiveApp(I)I
.end method

.method public static native Native_Sdp_SetSensitiveColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I
.end method

.method public static native Native_Sdp_UpdateAsymmetricSensitiveData(ILjava/lang/String;)I
.end method

.method public static native Native_Sdp_UpdateDBEdek(Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_UpdateFileEdek(Ljava/lang/String;)I
.end method

.method public static getSdpManager()Lcom/android/sdp/SdpManager;
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lcom/android/sdp/SdpManager;->_instance:Lcom/android/sdp/SdpManager;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Lcom/android/sdp/SdpManager;

    invoke-direct {v0}, Lcom/android/sdp/SdpManager;-><init>()V

    sput-object v0, Lcom/android/sdp/SdpManager;->_instance:Lcom/android/sdp/SdpManager;

    .line 528
    :cond_0
    sget-object v0, Lcom/android/sdp/SdpManager;->_instance:Lcom/android/sdp/SdpManager;

    return-object v0
.end method

.method private getSdpService()Lcom/sec/sdp/ISdpManagerService;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/sdp/SdpManager;->mService:Lcom/sec/sdp/ISdpManagerService;

    if-nez v0, :cond_0

    .line 511
    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sdp/SdpManager;->mService:Lcom/sec/sdp/ISdpManagerService;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/sdp/SdpManager;->mService:Lcom/sec/sdp/ISdpManagerService;

    return-object v0
.end method


# virtual methods
.method public convertToSensitiveFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v0, "SDP.SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To handle SDP_ConvertToSensitiveFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/sdp/SdpManager;->setSensitiveFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFlag(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbalias"    # Ljava/lang/String;
    .param p3, "flagName"    # Ljava/lang/String;

    .prologue
    .line 460
    const/4 v2, -0x1

    .line 461
    .local v2, "retVal":I
    const/4 v0, 0x0

    .line 464
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez p2, :cond_2

    :try_start_0
    const-string v1, ""

    .line 465
    .local v1, "dbaliasprefix":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pragma "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sdp_get_flag(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 466
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 472
    :cond_0
    if-eqz v0, :cond_1

    .line 473
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 476
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :cond_1
    :goto_1
    return v2

    .line 464
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 469
    :catch_0
    move-exception v3

    .line 470
    .local v3, "x":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    if-eqz v0, :cond_1

    .line 473
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 472
    .end local v3    # "x":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 473
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method

.method public getSDPDBVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbalias"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v2, -0x1

    .line 282
    .local v2, "version":I
    :try_start_0
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSDPDBVersion called with dbalias = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-nez p2, :cond_1

    const-string v1, ""

    .line 284
    .local v1, "dbaliasprefix":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pragma "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sdp_get_db_version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 285
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 288
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 293
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :goto_1
    return v2

    .line 283
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v3

    .line 290
    .local v3, "x":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getSDPDBVersion(Ljava/lang/String;)I
    .locals 6
    .param p1, "dbPath"    # Ljava/lang/String;

    .prologue
    .line 307
    :try_start_0
    const-string v3, "SDP.SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSDPDBVersion called with dbPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 309
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/sdp/SdpManager;->getSDPDBVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    .line 310
    .local v1, "version":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "version":I
    :goto_0
    return v1

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, "x":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 316
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSensitiveDBInfo(II)Ljava/util/List;
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 595
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensitiveFileInfo(II)Ljava/util/List;
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 579
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 6

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 106
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 109
    .local v3, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/sdp/SdpManager;->getSdpService()Lcom/sec/sdp/ISdpManagerService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/sec/sdp/ISdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    .line 110
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 117
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :goto_0
    return v4

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDP.SDK"

    const-string v5, "Error- Exception in get SDP state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, "SDP.SDK"

    const-string v5, "Failed to get SDP state!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public isSDPEnabled(I)Z
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/sdp/SdpManager;->getSdpService()Lcom/sec/sdp/ISdpManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 609
    :try_start_0
    invoke-direct {p0}, Lcom/android/sdp/SdpManager;->getSdpService()Lcom/sec/sdp/ISdpManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/sdp/ISdpManagerService;->isSDPEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 614
    :goto_0
    return v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.SDK"

    const-string v2, "Failed to call isSDPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSensitiveFile(Ljava/lang/String;)Z
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "res":Z
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To handle SDP_IsSensitiveFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 208
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 209
    .local v3, "userId":I
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "given app info: uid -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-userid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :try_start_0
    invoke-static {p1}, Lcom/android/sdp/SdpManager;->Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 212
    const/4 v1, 0x1

    .line 217
    :cond_0
    :goto_0
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To handle SDP_IsSensitiveFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDP.SDK"

    const-string v5, "Error- Exception in setting Policy"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFlag(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbalias"    # Ljava/lang/String;
    .param p3, "flagName"    # Ljava/lang/String;
    .param p4, "flagVal"    # I

    .prologue
    .line 439
    if-nez p2, :cond_0

    :try_start_0
    const-string v0, ""

    .line 440
    .local v0, "dbaliasprefix":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pragma "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "sdp_set_flag(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    .end local v0    # "dbaliasprefix":Ljava/lang/String;
    :goto_1
    return-void

    .line 439
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "x":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setSensitiveApp(I)Z
    .locals 7
    .param p1, "pid"    # I

    .prologue
    .line 491
    const/4 v1, 0x0

    .line 492
    .local v1, "res":Z
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To handle SDP_SetSensitiveApp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 494
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 495
    .local v3, "userId":I
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "given app info: uid -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-userid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :try_start_0
    invoke-static {p1}, Lcom/android/sdp/SdpManager;->Native_Sdp_SetSensitiveApp(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 498
    const-string v4, "SDP.SDK"

    const-string v5, "Error to handle SDP_SetSensitiveApp"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return v1

    .line 500
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDP.SDK"

    const-string v5, "Error- Exception in setting Policy"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSensitiveDBInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .param p3, "dBPath"    # Ljava/lang/String;
    .param p4, "tableName"    # Ljava/lang/String;
    .param p5, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v0, -0x1

    return v0
.end method

.method public setSensitiveDBPolicy(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/sdp/SdpManager$SensitiveDBPolicy;)Z
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbalias"    # Ljava/lang/String;
    .param p3, "policy"    # Lcom/android/sdp/SdpManager$SensitiveDBPolicy;

    .prologue
    const/4 v3, 0x0

    .line 250
    if-eqz p3, :cond_0

    iget-object v4, p3, Lcom/android/sdp/SdpManager$SensitiveDBPolicy;->columns:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p3, Lcom/android/sdp/SdpManager$SensitiveDBPolicy;->columns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 252
    :try_start_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/SdpDatabase;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;-><init>(Ljava/lang/String;)V

    .line 253
    .local v2, "secDb":Lcom/sec/enterprise/knox/sdp/SdpDatabase;
    iget-object v4, p3, Lcom/android/sdp/SdpManager$SensitiveDBPolicy;->table:Ljava/lang/String;

    iget-object v5, p3, Lcom/android/sdp/SdpManager$SensitiveDBPolicy;->columns:Ljava/util/List;

    invoke-virtual {v2, p1, p2, v4, v5}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->setSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 266
    .end local v2    # "secDb":Lcom/sec/enterprise/knox/sdp/SdpDatabase;
    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v0    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
    :catch_1
    move-exception v0

    .line 258
    .local v0, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;
    goto :goto_0

    .line 259
    .end local v0    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;
    :catch_2
    move-exception v0

    .line 260
    .local v0, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;
    goto :goto_0

    .line 261
    .end local v0    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;
    :catch_3
    move-exception v1

    .line 262
    .local v1, "se":Landroid/database/sqlite/SQLiteException;
    goto :goto_0
.end method

.method public setSensitiveFile(Ljava/lang/String;)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "res":Z
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "$$To handle SDP_SetSensitiveFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 135
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 136
    .local v3, "userId":I
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "given app info: uid -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-userid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    invoke-static {v3, p1}, Lcom/android/sdp/SdpManager;->Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 139
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error to handle SDP_SetSensitiveFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return v1

    .line 141
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDP.SDK"

    const-string v5, "Error- Exception in setting Policy"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSensitiveFileInfo(IILjava/lang/String;)I
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 545
    const/4 v0, -0x1

    return v0
.end method

.method public updateFileEdek(Ljava/lang/String;)Z
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To handle SDP_UpdateFileEdek : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "res":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 161
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 162
    .local v3, "userId":I
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "given app info: uid -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-userid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_0
    invoke-static {v3, p1}, Lcom/android/sdp/SdpManager;->Native_Sdp_UpdateAsymmetricSensitiveData(ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 165
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error to handle SDP_UpdateAsymmetricSensitiveData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To handle SDP_UpdateAsymmetricSensitiveData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v1

    .line 167
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDP.SDK"

    const-string v5, "Error- Exception in setting Policy"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSDPStateToDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbalias"    # Ljava/lang/String;
    .param p3, "sdpState"    # I

    .prologue
    const/4 v4, 0x0

    .line 346
    const/4 v0, 0x0

    .line 348
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "SDP.SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSDPStateToDB called with dbalias = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sdpState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-nez p2, :cond_1

    const-string v1, ""

    .line 350
    .local v1, "dbaliasprefix":Ljava/lang/String;
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 373
    :goto_1
    const/4 v4, 0x1

    .line 380
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :cond_0
    :goto_2
    return v4

    .line 349
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 352
    .restart local v1    # "dbaliasprefix":Ljava/lang/String;
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pragma "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sdp_locked;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 374
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 355
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dbaliasprefix":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pragma "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sdp_unlocked;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    const/4 v3, 0x1

    .line 360
    .local v3, "rows":I
    :goto_3
    if-lez v3, :cond_3

    .line 361
    const-string v5, "SDP.SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling next : pragma runoneconvert  in sdpState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pragma "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sdp_run_one_convert"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 364
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 366
    :cond_2
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 367
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 369
    :cond_3
    const-string v5, "SDP.SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DONE calling all pragma runoneconvert  in sdpState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSDPStateToDB(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "dbPath"    # Ljava/lang/String;
    .param p2, "sdpState"    # I

    .prologue
    const/4 v3, 0x0

    .line 409
    :try_start_0
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSDPStateToDB called with dbPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sdpState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 411
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, p2}, Lcom/android/sdp/SdpManager;->updateSDPStateToDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z

    move-result v2

    .line 412
    .local v2, "ret":Z
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "ret":Z
    :goto_0
    return v2

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 418
    goto :goto_0
.end method
