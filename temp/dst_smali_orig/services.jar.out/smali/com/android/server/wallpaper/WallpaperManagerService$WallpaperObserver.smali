.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mDesktopWallpaperFile:Ljava/io/File;

.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperFile_2:Ljava/io/File;

.field final mWallpaperInfoFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field wallpaperFileStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x688

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->wallpaperFileStream:Ljava/io/InputStream;

    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperInfoFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile_2:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper_desktop"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    return-void
.end method

.method private isAstcByteArray([B)Z
    .locals 6
    .param p1, "inputBytes"    # [B

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    .local v2, "isAstc":Z
    new-array v0, v5, [B

    fill-array-data v0, :array_0

    .local v0, "astcHeader":[B
    if-eqz p1, :cond_2

    array-length v3, p1

    if-le v3, v5, :cond_2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    aget-byte v3, p1, v1

    aget-byte v4, v0, v1

    if-eq v3, v4, :cond_1

    const/4 v2, 0x0

    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :array_0
    .array-data 1
        0x13t
        -0x55t
        -0x5ft
        0x5ct
    .end array-data
.end method

.method private isAstcWallpaper(Ljava/io/File;)Z
    .locals 6
    .param p1, "wallpaperFile"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xa

    new-array v1, v3, [B

    .local v1, "streamBuffer":[B
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SRIB_MCT_COMpression Wallpaper file exist & path is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->wallpaperFileStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->wallpaperFileStream:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->wallpaperFileStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->isAstcByteArray([B)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "WallpaperManagerService"

    const-string v3, " WALLPAPER TC SRIB_MCT_IMAGE_COMPRESSION  Wallpaper is already compressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, "io":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "io":Ljava/io/IOException;
    :cond_1
    const-string v3, "WallpaperManagerService"

    const-string v4, "Wallpaper doesn\'t exist "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 12
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/16 v3, 0x8

    const/4 v10, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    new-instance v7, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v7, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v7, "changedFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile_2:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperInfoFile:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "origId":J
    new-instance v6, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .local v6, "bm":Landroid/app/backup/BackupManager;
    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v6    # "bm":Landroid/app/backup/BackupManager;
    .end local v8    # "origId":J
    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile_2:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    if-eq p1, v3, :cond_4

    const/16 v1, 0x80

    if-ne p1, v1, :cond_5

    :cond_4
    move v10, v0

    .local v10, "written":Z
    :cond_5
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    if-ne p1, v3, :cond_6

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-nez v0, :cond_6

    if-ne p1, v3, :cond_8

    invoke-direct {p0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->isAstcWallpaper(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    if-eqz v10, :cond_7

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    :cond_7
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string v1, "onEvent change ImageWallpaper"

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .end local v10    # "written":Z
    :cond_8
    monitor-exit v11

    goto/16 :goto_0

    .end local v7    # "changedFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
