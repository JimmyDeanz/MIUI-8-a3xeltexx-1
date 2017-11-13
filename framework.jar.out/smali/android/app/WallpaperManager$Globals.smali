.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field fileNameFilter:Ljava/io/FilenameFilter;

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mSimState_1:Ljava/lang/String;

.field private mSimState_2:Ljava/lang/String;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 524
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->fileNameFilter:Ljava/io/FilenameFilter;

    .line 274
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 275
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 276
    return-void
.end method

.method static synthetic access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 264
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/WallpaperManager$Globals;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getCompressedVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pkm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 445
    .end local p1    # "file":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 399
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v8, :cond_0

    .line 400
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WallpaperService not running"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_0
    return-object v7

    .line 405
    :cond_0
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v5, "params":Landroid/os/Bundle;
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 407
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 408
    const-string/jumbo v8, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 409
    .local v6, "width":I
    const-string/jumbo v8, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 412
    .local v3, "height":I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 413
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 415
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 422
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v7, v8

    .line 427
    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v9, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const-string v10, "IOException"

    invoke-interface {v9, v10}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 432
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_1
    move-exception v1

    .line 433
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getCurrentWallpaperLocked:"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 416
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_2
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Can\'t decode file"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const-string v9, "OutOfMemoryError"

    invoke-interface {v8, v9}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 422
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 423
    :catch_3
    move-exception v1

    .line 425
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const-string v9, "IOException"

    invoke-interface {v8, v9}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 421
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 422
    :try_start_7
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 427
    :goto_2
    :try_start_8
    throw v8

    .line 423
    :catch_4
    move-exception v1

    .line 425
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v9, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const-string v10, "IOException"

    invoke-interface {v9, v10}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V

    goto :goto_2

    .line 430
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "height":I
    .end local v6    # "width":I
    :cond_1
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const-string/jumbo v9, "wallpaper fd is null"

    invoke-interface {v8, v9}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0
.end method

.method private getDefaultWallpaperFile()Ljava/io/File;
    .locals 26

    .prologue
    .line 532
    const-string/jumbo v22, "ro.config.wallpaper"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 533
    .local v20, "path":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 534
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 536
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PROP_WALLPAPER default wallpaper return:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v9

    .line 619
    .end local v9    # "file":Ljava/io/File;
    :goto_0
    return-object v21

    .line 541
    :cond_0
    const-string v7, "/carrier/data/app/WallpaperChooser/Customization_DefaultBackground.jpg"

    .line 542
    .local v7, "customWpFilePath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v6, "custWpFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_1

    .line 544
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Chameleon default wallpaper return:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v6

    .line 545
    goto :goto_0

    .line 549
    :cond_1
    const-string v18, "/data/omc/res/wallpaper/drawable/"

    .line 550
    .local v18, "omcWallpaperDirPath":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v17, "omcWallpaperDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->fileNameFilter:Ljava/io/FilenameFilter;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v19

    .line 552
    .local v19, "omcWallpapers":[Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 553
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_3

    .line 554
    aget-object v10, v19, v13

    .line 555
    .local v10, "fileName":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    .local v21, "wallpaperFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_2

    .line 557
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "OMC default wallpaper return:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 553
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 564
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v21    # "wallpaperFile":Ljava/io/File;
    :cond_3
    const-string v15, "/system/csc_contents/"

    .line 565
    .local v15, "multiCscWallpaperDirPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .local v14, "multiCscWallpaperDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->fileNameFilter:Ljava/io/FilenameFilter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v16

    .line 567
    .local v16, "multiCscWallpapers":[Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 568
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_5

    .line 569
    aget-object v10, v16, v13

    .line 570
    .restart local v10    # "fileName":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    .restart local v21    # "wallpaperFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_4

    .line 572
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Multi CSC wallpaper return:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 568
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 579
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v21    # "wallpaperFile":Ljava/io/File;
    :cond_5
    const-string v4, "/system/wallpaper/default_wallpaper/"

    .line 580
    .local v4, "cscWallpaperDirPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    .local v3, "cscWallpaperDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->fileNameFilter:Ljava/io/FilenameFilter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 582
    .local v5, "cscWallpapers":[Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 583
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 585
    .local v2, "UserID":I
    if-eqz v2, :cond_8

    const/16 v22, 0x64

    move/from16 v0, v22

    if-ge v2, v0, :cond_8

    array-length v0, v5

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    .line 586
    array-length v0, v5

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 587
    const/16 v22, 0x0

    aget-object v10, v5, v22

    .line 588
    .restart local v10    # "fileName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x4

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 589
    .local v8, "extension":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/system/wallpaper/default_wallpaper/default_wallpaper_10"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 590
    .local v11, "guestFilePath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v12, "guestWpFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_8

    .line 592
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "guest default wallpaper return:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v12

    .line 593
    goto/16 :goto_0

    .line 596
    .end local v8    # "extension":Ljava/lang/String;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "guestFilePath":Ljava/lang/String;
    .end local v12    # "guestWpFile":Ljava/io/File;
    :cond_6
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v11, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "/system/wallpaper/default_wallpaper/default_wallpaper_10.png"

    aput-object v23, v11, v22

    const/16 v22, 0x1

    const-string v23, "/system/wallpaper/default_wallpaper/default_wallpaper_10.jpg"

    aput-object v23, v11, v22

    .line 599
    .local v11, "guestFilePath":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    array-length v0, v11

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_8

    .line 600
    new-instance v12, Ljava/io/File;

    aget-object v22, v11, v13

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .restart local v12    # "guestWpFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_7

    .line 602
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "guest default wallpaper return:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v12

    .line 603
    goto/16 :goto_0

    .line 599
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 609
    .end local v11    # "guestFilePath":[Ljava/lang/String;
    .end local v12    # "guestWpFile":Ljava/io/File;
    .end local v13    # "i":I
    :cond_8
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    array-length v0, v5

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_a

    .line 610
    aget-object v10, v5, v13

    .line 611
    .restart local v10    # "fileName":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .restart local v21    # "wallpaperFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_9

    .line 613
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CSC default wallpaper return:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 609
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 618
    .end local v2    # "UserID":I
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v21    # "wallpaperFile":Ljava/io/File;
    :cond_a
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "no CSC wallpaper"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/16 v21, 0x0

    goto/16 :goto_0
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 450
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "getDefaultWallpaperLocked"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v4, 0x0

    .line 453
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v7

    .line 454
    .local v7, "width":I
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v3

    .line 484
    .local v3, "height":I
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperFile()Ljava/io/File;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 485
    .local v1, "defaultWallpaper":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 487
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object v4, v5

    .line 494
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-nez v4, :cond_2

    .line 495
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    # invokes: Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;)I
    invoke-static {p1}, Landroid/app/WallpaperManager;->access$100(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 503
    :goto_1
    if-eqz v4, :cond_1

    .line 505
    :try_start_3
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 506
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    invoke-static {v4, v8, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 507
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v7, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 512
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 521
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "defaultWallpaper":Ljava/io/File;
    .end local v3    # "height":I
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "width":I
    :goto_2
    return-object v8

    .line 488
    .restart local v1    # "defaultWallpaper":Ljava/io/File;
    .restart local v3    # "height":I
    .restart local v7    # "width":I
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "getDefaultWallpaperLocked error:"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 518
    .end local v1    # "defaultWallpaper":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "height":I
    .end local v7    # "width":I
    :catch_1
    move-exception v8

    :cond_1
    :goto_3
    move-object v8, v9

    .line 521
    goto :goto_2

    .line 498
    .restart local v1    # "defaultWallpaper":Ljava/io/File;
    .restart local v3    # "height":I
    .restart local v7    # "width":I
    :cond_2
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "android.wallpaper.settings_systemui_transparency"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 499
    :catch_2
    move-exception v2

    .line 500
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_7
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Can\'t put value of SETTINGS_SYSTEMUI_TRANSPARENCY"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 508
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 509
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_8
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Can\'t decode stream"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 512
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 513
    :catch_4
    move-exception v8

    goto :goto_3

    .line 511
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v8

    .line 512
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 515
    :goto_4
    :try_start_b
    throw v8
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    .line 513
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v9

    goto :goto_2

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_6
    move-exception v10

    goto :goto_4
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 360
    monitor-enter p0

    .line 361
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 363
    monitor-exit p0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWallpaperLockedForMultiSim(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    const/4 v8, 0x0

    .line 370
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 371
    .local v5, "params":Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5, p2}, Landroid/app/IWallpaperManager;->getWallpaperForMultiSim(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 372
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 373
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 374
    .local v6, "width":I
    const-string/jumbo v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 377
    .local v3, "height":I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 378
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 380
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 385
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 394
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :goto_0
    return-object v7

    .line 381
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :cond_0
    :goto_1
    move-object v7, v8

    .line 394
    goto :goto_0

    .line 384
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catchall_0
    move-exception v7

    .line 385
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 388
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 391
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 386
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method public onWallpaperChanged()V
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 287
    monitor-exit p0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    const/4 v3, 0x0

    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 294
    :try_start_1
    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 295
    :try_start_2
    monitor-exit p0

    .line 355
    :goto_0
    return-object v3

    .line 297
    :catch_0
    move-exception v3

    .line 302
    :cond_0
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "peekWallpaperBitmap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string/jumbo v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 306
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "mSimState":[Ljava/lang/String;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "peekWallpaperBitmap:MULTISIM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_7

    const-string v3, "ABSENT"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ABSENT"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 309
    :cond_1
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 310
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto/16 :goto_0

    .line 356
    .end local v1    # "mSimState":[Ljava/lang/String;
    .end local v2    # "prop":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 313
    .restart local v1    # "mSimState":[Ljava/lang/String;
    .restart local v2    # "prop":Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v3, :cond_3

    .line 314
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const-string/jumbo v4, "no wallpaper -> default displayed multi sim"

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    :cond_3
    :goto_1
    :try_start_4
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 320
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto/16 :goto_0

    .line 325
    .end local v1    # "mSimState":[Ljava/lang/String;
    :cond_4
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "peekWallpaperBitmap: single sim"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 327
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 330
    :cond_5
    :try_start_5
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v3, :cond_6

    .line 331
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const-string/jumbo v4, "no wallpaper -> default displayed single sim"

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 335
    :cond_6
    :goto_2
    :try_start_6
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 336
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto/16 :goto_0

    .line 341
    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 343
    :try_start_7
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 347
    :goto_3
    if-eqz p2, :cond_9

    .line 348
    :try_start_8
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v3, :cond_8

    .line 349
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 350
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto/16 :goto_0

    .line 344
    :catch_1
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No memory load current wallpaper"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 352
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_8
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 355
    :cond_9
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 332
    :catch_2
    move-exception v3

    goto :goto_2

    .line 315
    .restart local v1    # "mSimState":[Ljava/lang/String;
    :catch_3
    move-exception v3

    goto :goto_1
.end method
