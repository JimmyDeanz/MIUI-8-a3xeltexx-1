.class public Landroid/app/wallpaperbackup/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaperbackup/Controller$REQ_SIZE;,
        Landroid/app/wallpaperbackup/Controller$ERR_CODE;,
        Landroid/app/wallpaperbackup/Controller$RESULT;
    }
.end annotation


# static fields
.field public static ERROR_KEY:Ljava/lang/String; = null

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "wallpaper.png"

.field private static final IMAGE_FILE_NAME_SIM2:Ljava/lang/String; = "wallpaper2.png"

.field public static final REQUEST_BACKUP_WALLPAPER:Ljava/lang/String; = "android.intent.action.REQUEST_BACKUP_WALLPAPER"

.field public static final REQUEST_RESTORE_WALLPAPER:Ljava/lang/String; = "android.intent.action.REQUEST_RESTORE_WALLPAPER"

.field private static REQUIRED_SIZE:J = 0x0L

.field public static REQUIRED_SIZE_KEY:Ljava/lang/String; = null

.field public static final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String; = "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

.field public static final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String; = "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

.field public static RESULT_KEY:Ljava/lang/String; = null

.field public static SAVE_PATH:Ljava/lang/String; = null

.field public static SOURCE_KEY:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "XMl_BNR_APK_REV"

.field private static final WALLPAPER_PATH:Ljava/lang/String; = "wallpaper"


# instance fields
.field private mComponent:Ljava/lang/String;

.field private mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

.field private mHeight:I

.field private mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

.field private mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

.field private mWidth:I

.field private wallpaperImagePath:Ljava/lang/String;

.field private wallpaperUserFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "SAVE_PATH"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->SAVE_PATH:Ljava/lang/String;

    .line 45
    const-string v0, "RESULT"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    .line 46
    const-string v0, "ERR_CODE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    .line 47
    const-string v0, "REQ_SIZE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    .line 48
    const-string v0, "SOURCE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    .line 61
    const-wide/32 v0, 0xa00000

    sput-wide v0, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 53
    sget-object v0, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 54
    sget-object v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 55
    sget-object v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mComponent:Ljava/lang/String;

    .line 421
    return-void
.end method

.method private createBackupFiles(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "wallpaper.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 151
    invoke-direct {p0, p2}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "imageNameWithPath":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageName()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "imageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, v1}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1, v1}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 157
    .local v2, "wallpaperType":Z
    if-eqz v2, :cond_0

    .line 158
    invoke-direct {p0, v0, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    return v2
.end method

.method private createBackupFilesForMultiSim(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wallpaper.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 167
    invoke-direct {p0, p2}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "imageNameWithPath":Ljava/lang/String;
    invoke-direct {p0, p2}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPathSim2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "imageNameWithPathSim2":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageName()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "imageName":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, v1}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v2}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 174
    const/4 v5, 0x0

    .line 176
    .local v5, "wallpaperType":Z
    const-string/jumbo v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "simStateString":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "simState":[Ljava/lang/String;
    aget-object v6, v3, v8

    const-string v7, "ABSENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v3, v9

    const-string v7, "ABSENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 179
    invoke-virtual {p0, p1, v1, v8}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensionsForMultiSim(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    .line 180
    if-eqz v5, :cond_0

    .line 181
    invoke-virtual {p0, p1, v2, v9}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensionsForMultiSim(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    .line 187
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 188
    invoke-direct {p0, v0, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_1
    return v5

    .line 184
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method

.method private createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v6, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/wallpaperbackup/WallpaperUserPOJO;>;"
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    iget v1, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    iget v2, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    iget-object v4, p0, Landroid/app/wallpaperbackup/Controller;->mComponent:Ljava/lang/String;

    const/16 v5, 0x65

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 292
    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v1, Landroid/app/wallpaperbackup/GenerateXMLForWallpaperUser;

    invoke-direct {v1, v6, p2}, Landroid/app/wallpaperbackup/GenerateXMLForWallpaperUser;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private deleteFiles(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "sd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "sd":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 300
    .local v0, "imageName":Ljava/lang/String;
    return-object v0
.end method

.method private getBackupWallpaperImageFilesPathSim2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;

    .prologue
    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper2.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 306
    .local v0, "imageName":Ljava/lang/String;
    return-object v0
.end method

.method private getBackupWallpaperImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string/jumbo v0, "wallpaper/wallpaper.png"

    .line 196
    .local v0, "mImageName":Ljava/lang/String;
    return-object v0
.end method

.method private getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "recItem"    # Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    .prologue
    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 312
    .local v0, "imageName":Ljava/lang/String;
    return-object v0
.end method

.method private hasFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 145
    :goto_0
    return v1

    .line 143
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWallpaperUserFileExists()Z
    .locals 2

    .prologue
    .line 285
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "appsFileWallpaperUser":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "nameOfImageAlongWithPath"    # Ljava/lang/String;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v1, "sd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 369
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 370
    .local v0, "fos":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 372
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 373
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 375
    return-void
.end method


# virtual methods
.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 379
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 380
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    .line 383
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 384
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 385
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 386
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageNamePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 318
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 320
    .local v2, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 321
    .local v0, "image":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {p0, v2}, Landroid/app/wallpaperbackup/Controller;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 325
    :cond_0
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 326
    .local v4, "wpi":Landroid/app/WallpaperInfo;
    if-nez v4, :cond_2

    .line 327
    if-eqz v0, :cond_1

    .line 328
    invoke-static {p2, v0}, Landroid/app/wallpaperbackup/Controller;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 329
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    .line 330
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    .line 332
    :cond_1
    const/4 v1, 0x1

    .line 335
    .local v1, "returnValue":Z
    :goto_0
    return v1

    .line 334
    .end local v1    # "returnValue":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "returnValue":Z
    goto :goto_0
.end method

.method public getWallpaperDimensionsForMultiSim(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageNamePath"    # Ljava/lang/String;
    .param p3, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 342
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v2, p3}, Landroid/app/WallpaperManager;->getBitmapForMultiSim(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 345
    .local v3, "wpi":Landroid/app/WallpaperInfo;
    if-nez v3, :cond_1

    .line 346
    invoke-static {p2, v0}, Landroid/app/wallpaperbackup/Controller;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 347
    if-nez p3, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    .line 349
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    .line 351
    :cond_0
    const/4 v1, 0x1

    .line 355
    .local v1, "returnValue":Z
    :goto_0
    return v1

    .line 354
    .end local v1    # "returnValue":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "returnValue":Z
    goto :goto_0
.end method

.method public pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->isWallpaperUserFileExists()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 228
    new-instance v3, Landroid/app/wallpaperbackup/LiveChange;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/app/wallpaperbackup/LiveChange;-><init>(Landroid/content/Context;)V

    .line 229
    .local v3, "liveChange":Landroid/app/wallpaperbackup/LiveChange;
    new-instance v12, Landroid/app/wallpaperbackup/WallpaperXmlParser;

    iget-object v13, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Landroid/app/wallpaperbackup/WallpaperXmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    .local v12, "wallpaperParser":Landroid/app/wallpaperbackup/WallpaperXmlParser;
    invoke-virtual {v12}, Landroid/app/wallpaperbackup/WallpaperXmlParser;->getObject()Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    move-result-object v4

    .line 231
    .local v4, "mItem":Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v11

    .line 233
    .local v11, "wallpaperManager":Landroid/app/WallpaperManager;
    const/4 v8, 0x0

    .line 234
    .local v8, "stream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 235
    .local v9, "streamSim2":Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileInputStream;

    .end local v8    # "stream":Ljava/io/InputStream;
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4}, Landroid/app/wallpaperbackup/Controller;->getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v8    # "stream":Ljava/io/InputStream;
    if-eqz v8, :cond_8

    .line 239
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_6

    .line 242
    const-string/jumbo v13, "gsm.sim.state"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "simStateString":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "simState":[Ljava/lang/String;
    const-string/jumbo v13, "ril.MSIMM"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "simSlot":Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v6, v13

    const-string v14, "ABSENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x1

    aget-object v13, v6, v13

    const-string v14, "ABSENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const-string v13, "1"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 247
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v11, v8, v13}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;I)V

    .line 249
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPathSim2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "imageNameWithPathSim2":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/app/wallpaperbackup/Controller;->hasFile(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 251
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v9    # "streamSim2":Ljava/io/InputStream;
    .local v10, "streamSim2":Ljava/io/InputStream;
    move-object v9, v10

    .line 256
    .end local v10    # "streamSim2":Ljava/io/InputStream;
    .restart local v9    # "streamSim2":Ljava/io/InputStream;
    :goto_0
    if-eqz v9, :cond_2

    .line 257
    const/4 v13, 0x1

    invoke-virtual {v11, v9, v13}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v2    # "imageNameWithPathSim2":Ljava/lang/String;
    .end local v5    # "simSlot":Ljava/lang/String;
    .end local v6    # "simState":[Ljava/lang/String;
    .end local v7    # "simStateString":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 269
    if-eqz v9, :cond_3

    .line 270
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 282
    :cond_3
    :goto_2
    return-void

    .line 253
    .restart local v2    # "imageNameWithPathSim2":Ljava/lang/String;
    .restart local v5    # "simSlot":Ljava/lang/String;
    .restart local v6    # "simState":[Ljava/lang/String;
    .restart local v7    # "simStateString":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4}, Landroid/app/wallpaperbackup/Controller;->getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v9    # "streamSim2":Ljava/io/InputStream;
    .restart local v10    # "streamSim2":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "streamSim2":Ljava/io/InputStream;
    .restart local v9    # "streamSim2":Ljava/io/InputStream;
    goto :goto_0

    .line 260
    .end local v2    # "imageNameWithPathSim2":Ljava/lang/String;
    :cond_5
    invoke-virtual {v11, v8}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 265
    .end local v5    # "simSlot":Ljava/lang/String;
    .end local v6    # "simState":[Ljava/lang/String;
    .end local v7    # "simStateString":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 268
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 269
    if-eqz v9, :cond_3

    .line 270
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 263
    :cond_6
    :try_start_2
    invoke-virtual {v11, v8}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v13

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 269
    if-eqz v9, :cond_7

    .line 270
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v13

    .line 274
    :cond_8
    invoke-virtual {v4}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->getComponent()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "com":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/app/wallpaperbackup/LiveChange;->set(Ljava/lang/String;)V

    goto :goto_2

    .line 280
    .end local v1    # "com":Ljava/lang/String;
    .end local v3    # "liveChange":Landroid/app/wallpaperbackup/LiveChange;
    .end local v4    # "mItem":Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v9    # "streamSim2":Ljava/io/InputStream;
    .end local v11    # "wallpaperManager":Landroid/app/WallpaperManager;
    .end local v12    # "wallpaperParser":Landroid/app/wallpaperbackup/WallpaperXmlParser;
    :cond_9
    new-instance v13, Ljava/lang/Exception;

    invoke-direct {v13}, Ljava/lang/Exception;-><init>()V

    throw v13
.end method

.method public startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    .line 66
    .local v0, "availableBlocks":J
    const-wide/16 v2, 0x0

    .line 67
    .local v2, "blockSizeInBytes":J
    const-wide/32 v6, 0x40000000

    .line 70
    .local v6, "freeSpaceInBytes":J
    :try_start_0
    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 71
    .local v9, "stat":Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 72
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    int-to-long v2, v10

    .line 73
    mul-long v6, v0, v2

    .line 80
    .end local v9    # "stat":Landroid/os/StatFs;
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 82
    :try_start_1
    sget-wide v10, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_0

    .line 83
    sget-object v10, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 84
    sget-object v10, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 85
    sget-object v10, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :goto_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    sget-object v10, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    iget-object v11, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    invoke-virtual {v11}, Landroid/app/wallpaperbackup/Controller$RESULT;->getValue()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    sget-object v10, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    iget-object v11, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    invoke-virtual {v11}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->getValue()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    sget-object v10, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v11, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    invoke-virtual {v11}, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->getValue()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    sget-object v10, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v5, v10, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    return-void

    .line 75
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v8, 0x0

    .line 88
    .local v8, "result":Z
    :try_start_2
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupFilesForMultiSim(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 95
    :goto_2
    if-eqz v8, :cond_2

    .line 96
    sget-object v10, Landroid/app/wallpaperbackup/Controller$RESULT;->OK:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 97
    sget-object v10, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 103
    :goto_3
    sget-object v10, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 106
    .end local v8    # "result":Z
    :catch_1
    move-exception v4

    .line 107
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v10, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 108
    sget-object v10, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 109
    sget-object v10, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    goto :goto_1

    .line 92
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "result":Z
    :cond_1
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupFiles(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    goto :goto_2

    .line 99
    :cond_2
    sget-object v10, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 100
    sget-object v10, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method public startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "wallpaper.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 204
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/wallpaperbackup/Controller;->pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    sget-object v2, Landroid/app/wallpaperbackup/Controller$RESULT;->OK:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 206
    sget-object v2, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 207
    sget-object v2, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$RESULT;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    return-void

    .line 208
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    sget-object v2, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 211
    sget-object v2, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 212
    sget-object v2, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    goto :goto_0
.end method
