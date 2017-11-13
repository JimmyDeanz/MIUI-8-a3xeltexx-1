.class public Lcom/sec/enterprise/knox/sdp/SdpFileSystem;
.super Ljava/lang/Object;
.source "SdpFileSystem.java"


# static fields
.field private static final BASE_USER_DATA_DIR:Ljava/lang/String; = "/data/enc_user"

.field private static final BASE_USER_SDCARD_DIR:Ljava/lang/String; = "/storage/enc_emulated"

.field private static final LEGACY_SDCARD_DIR:Ljava/lang/String; = "/storage/emulated"

.field private static final LEGACY_USER_DATA_DIR:Ljava/lang/String; = "/data/user"

.field private static final TAG:Ljava/lang/String; = "SdpFileSystem"


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mCacheDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabasesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mEmulatedDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mEngineId:I

.field private mFilesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    :try_start_0
    const-string v0, "sdp_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mEngineId:I

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    iput-object v2, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    iput-object v2, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    iput-object v2, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    iput-object v2, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->enforcePermission()V

    iput-object p2, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mEngineId:I

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    const-string v1, "SdpFileSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SdpFileSystem created engine:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mEngineId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I
.end method

.method private static native Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I
.end method

.method private static createDirLocked(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "SdpFileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create files subdir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0
.end method

.method private enforcePermission()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    const/16 v1, -0x63

    .local v1, "res":I
    const-string v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Lcom/sec/sdp/ISdpManagerService;->isLicensed(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "SdpFileSystem"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private getDatabasesDir()Ljava/io/File;
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v0

    .local v0, "f":Ljava/io/File;
    if-nez v0, :cond_0

    const-string v1, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get enc-package dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v2

    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return-object v1

    .restart local v0    # "f":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "databases"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mDatabasesDir:Ljava/io/File;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getEncDataDirFile()Ljava/io/File;
    .locals 9

    .prologue
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    if-gez v6, :cond_2

    :cond_0
    const-string v6, "SdpFileSystem"

    const-string v7, "getEncPackageDir :: invalid object"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v6, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/enc_user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "encPkgDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    :try_start_0
    const-string v6, "sdp"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v4

    .local v4, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v4, :cond_3

    const-string v6, "SdpFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFilesDir callihng createEncPkgDir "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-interface {v4, v6, v1}, Lcom/sec/sdp/ISdpManagerService;->createEncPkgDir(ILjava/lang/String;)I

    move-result v3

    .local v3, "result":I
    const-string v6, "SdpFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFilesDir done createEncPkgDir result "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    move-object v0, v5

    goto/16 :goto_0

    .end local v3    # "result":I
    .end local v4    # "service":Lcom/sec/sdp/ISdpManagerService;
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    const-string v6, "SdpFileSystem"

    const-string v7, "RemoteException from call unregisterListener"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    goto/16 :goto_0

    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v4    # "service":Lcom/sec/sdp/ISdpManagerService;
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v0, v5

    goto/16 :goto_0
.end method

.method private getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :try_start_0
    const-string v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v2    # "service":Lcom/sec/sdp/ISdpManagerService;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "SdpFileSystem"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getExternalStorageDirectory(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/enc_emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getManagedProfileKnoxDir(I)Ljava/io/File;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SdpFileSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getManagedProfileKnoxDir :: Not applicable to user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    .local v0, "file":Ljava/io/File;
    iget-object v4, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/storage/emulated/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/Knox"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "knoxPath":Ljava/lang/String;
    const-string v3, "SdpFileSystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getManagedProfileKnoxDir :: Protected knox path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SdpFileSystem"

    const-string v5, "getManagedProfileKnoxDir :: The knox path exists"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "knoxPath":Ljava/lang/String;
    .restart local v0    # "file":Ljava/io/File;
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "knoxPath":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v3, "SdpFileSystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getManagedProfileKnoxDir :: The knox path does not exist for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "knoxPath":Ljava/lang/String;
    .restart local v0    # "file":Ljava/io/File;
    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method public static getUserDataDir(ILjava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/enc_user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "extraPermissions"    # I

    .prologue
    const/4 v2, -0x1

    or-int/lit16 v0, p2, 0x1b0

    .local v0, "perms":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "createDirectory"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x0

    .local v0, "dir":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "f":Ljava/io/File;
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_1

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "dirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dir":Ljava/io/File;
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v1    # "dirPath":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_0
    move-object v3, v2

    :goto_1
    return-object v3

    :cond_1
    invoke-direct {p0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    iget v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v0

    .local v0, "f":Ljava/io/File;
    if-nez v0, :cond_1

    const-string v1, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get enc-package dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "f":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v3, "cache"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mCacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    invoke-static {v0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/storage/enc_emulated/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mEmulatedDir:Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 5

    .prologue
    iget v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v0

    .local v0, "f":Ljava/io/File;
    if-nez v0, :cond_1

    const-string v1, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get enc-package dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "f":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v3, "files"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mFilesDir:Ljava/io/File;

    invoke-static {v1}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getManagedProfileKnoxDir()Ljava/io/File;
    .locals 3

    .prologue
    const-string v0, "SdpFileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getManagedProfileKnoxDir calling for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-direct {p0, v0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->getManagedProfileKnoxDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getUserDataDir()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v3}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .local v0, "dataDir":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v0    # "dataDir":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "dataDir":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    goto :goto_0

    .end local v0    # "dataDir":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->getEncDataDirFile()Ljava/io/File;

    move-result-object v1

    .local v1, "f":Ljava/io/File;
    if-nez v1, :cond_2

    const-string v4, "SdpFileSystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get enc-package dir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mAlias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "f":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isSensitive(Ljava/io/File;)Z
    .locals 4
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .local v1, "res":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SdpFileSystem"

    const-string v3, "Error- Exception in setting Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    iget v3, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mUserId:I

    invoke-static {v3}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .local v1, "f":Ljava/io/File;
    const/high16 v2, 0x10000000

    .local v2, "flags":I
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_2

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public setSensitive(Ljava/io/File;)Z
    .locals 5
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .local v1, "res":Z
    :try_start_0
    iget v2, p0, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->mEngineId:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error to handle SDP_SetSensitiveFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SdpFileSystem"

    const-string v3, "Error- Exception in setting Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
