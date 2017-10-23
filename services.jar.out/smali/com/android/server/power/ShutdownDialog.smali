.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$RunningCheckable;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x3

.field private static final GOLD:I = 0x3

.field private static final MSG_LOAD_FINISH:I = -0x1

.field private static final MSG_UPDATE_DELAY:I = 0x64

.field private static final MSG_UPDATE_FRAME:I = 0x0

.field private static final PATH_B2BSHUTDOWNPATH:Ljava/lang/String; = "//data/b2b/ShutdownFileInfo.txt"

.field private static final PATH_BOOTSAMSUNG:Ljava/lang/String; = "//system/media/bootsamsung.qmg"

.field private static final PATH_BOOTSAMSUNG_LOOP:Ljava/lang/String; = "//system/media/bootsamsungloop.qmg"

.field private static final PATH_COVER_POSTFIX:Ljava/lang/String; = ".cover"

.field private static final PATH_MINI_COVER_POSTFIX:Ljava/lang/String; = ".mini"

.field private static final PATH_OLD_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_PST_IMG:Ljava/lang/String; = "//system/PST/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/PowerOff.ogg"

.field private static final PATH_SHUTDOWNSOUND_SKU:Ljava/lang/String; = "/media/audio/ui/PowerOff.ogg"

.field private static final PATH_SHUTDOWN_AFTER:Ljava/lang/String; = "//system/media/shutdownafter.qmg"

.field private static final PATH_SHUTDOWN_BEFORE:Ljava/lang/String; = "//system/media/shutdownbefore.qmg"

.field private static final PATH_SHUTDOWN_LOOP:Ljava/lang/String; = "//system/media/shutdownloop.qmg"

.field private static final PATH_SHUTDOWN_SKU:Ljava/lang/String; = "/media/video/shutdown/"

.field private static final PROPERTY_SHUTDOWN_SKU:Ljava/lang/String; = "persist.sys.omc_respath"

.field private static final SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

.field private static final SILVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

.field private PATH_SHUTDOWNING_PREFIX:Ljava/lang/String;

.field private SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

.field private final WINDOWTYPE_OFFSET:I

.field private b2bAnimPath:Ljava/lang/String;

.field private b2bSoundPath:Ljava/lang/String;

.field private final bitmapQ:[Landroid/graphics/Bitmap;

.field private bitmapQFront:I

.field private bitmapQRear:I

.field private final coverQmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private doLoopAnim:Z

.field private final drawBufferLock:Ljava/lang/Object;

.field private final logHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private final mLogString:Ljava/lang/StringBuffer;

.field private mLogView:Landroid/widget/TextView;

.field private mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field private final mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field private final mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field private mp:Landroid/media/MediaPlayer;

.field private final qmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private shutdownSoundPath:Ljava/lang/String;

.field private silentShutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "shutdownbefore.qmg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "shutdown.qmg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "shutdownafter.qmg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "shutdownloop.qmg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 173
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 104
    const-string v2, "//system/media/shutdown_"

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNING_PREFIX:Ljava/lang/String;

    .line 105
    const-string v2, ".qmg"

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    .line 106
    const-string v2, "/sys/class/lcd/panel/window_type"

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

    .line 107
    const/16 v2, 0xf

    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->WINDOWTYPE_OFFSET:I

    .line 135
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 136
    iput v5, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    .line 137
    iput v5, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    .line 138
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    .line 147
    iput-boolean v5, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    .line 153
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    .line 154
    new-instance v2, Lcom/android/server/power/ShutdownDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$1;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    .line 167
    new-instance v2, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    .line 168
    new-instance v2, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    .line 169
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 177
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 181
    new-instance v2, Ljava/io/File;

    const-string v3, "//data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getBtoBShutdownPath()V

    .line 183
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B2B sound : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B2B img : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/server/power/ShutdownDialog;->setCancelable(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 192
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x680588

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 199
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 200
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cocktailbar"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 203
    .local v0, "hasCocktail":Z
    if-eqz v0, :cond_1

    .line 204
    const/16 v2, 0x8ae

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 211
    return-void

    .line 206
    :cond_1
    const/16 v2, 0x7e5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/android/server/power/ShutdownDialog$DrawState;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/ShutdownDialog;Lcom/samsung/android/cover/CoverManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/ShutdownDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    return v0
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 768
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 769
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/LibQmg;

    invoke-direct {v5, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 771
    .local v0, "cm":Lcom/samsung/android/cover/CoverManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 772
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->getCoverType(Lcom/samsung/android/cover/CoverManager;)I

    move-result v1

    .line 773
    .local v1, "coverType":I
    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    .line 774
    const-string v4, "ShutdownDialog"

    const-string v5, "Clear cover"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 781
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/LibQmg;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    :goto_1
    const/4 v2, 0x1

    .line 789
    .end local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .end local v1    # "coverType":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v2, "rtn":Z
    :goto_2
    return v2

    .line 775
    .end local v2    # "rtn":Z
    .restart local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .restart local v1    # "coverType":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v4, 0x6

    if-ne v1, v4, :cond_1

    .line 776
    const-string v4, ".mini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 778
    :cond_1
    const-string v4, ".cover"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 783
    :cond_2
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 787
    .end local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .end local v1    # "coverType":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "rtn":Z
    goto :goto_2
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "files"    # [Ljava/lang/String;

    .prologue
    .line 759
    const/4 v4, 0x0

    .line 760
    .local v4, "rtn":Z
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 761
    .local v1, "file":Ljava/lang/String;
    if-nez v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 760
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 761
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 763
    .end local v1    # "file":Ljava/lang/String;
    :cond_2
    return v4
.end method

.method private createBootupQmgPlayList()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 794
    const-string v0, "//system/media/bootsamsung.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 796
    return-void
.end method

.method private createShutdownQmgPlayList()V
    .locals 8

    .prologue
    .line 799
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 800
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 801
    const/4 v3, 0x0

    .line 802
    .local v3, "imei_mps_code":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v3

    .line 803
    if-eqz v3, :cond_1

    .line 804
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "//system/media/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "_shutdown.qmg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 806
    .local v1, "chameleonPath":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 864
    .end local v1    # "chameleonPath":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    const-string v6, "//system/PST/shutdown.qmg"

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 816
    const-string v6, "//system/csc_contents/shutdown.qmg"

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 822
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 828
    :cond_2
    const-string/jumbo v6, "persist.sys.omc_respath"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 829
    .local v5, "skuAnimPath":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 830
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media/video/shutdown/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 836
    :cond_3
    const-string v6, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 840
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->readColorId()I

    move-result v2

    .line 841
    .local v2, "color_id":I
    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->getQmgCodeById(I)Ljava/lang/String;

    move-result-object v4

    .line 843
    .local v4, "qmg_code":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 844
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNING_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "PATH_SHUTDOWNIMG_COLOR":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 847
    const-string v6, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 848
    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 849
    const-string v6, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 854
    .end local v0    # "PATH_SHUTDOWNIMG_COLOR":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/io/File;

    const-string v7, "//system/media/shutdown.qmg"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 856
    const-string v6, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 857
    const-string v6, "//system/media/shutdown.qmg"

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    .line 858
    const-string v6, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 861
    :cond_5
    const-string v6, "//system/media/shutdownloop.qmg"

    invoke-direct {p0, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0
.end method

.method private getBtoBShutdownPath()V
    .locals 5

    .prologue
    .line 976
    const/4 v1, 0x0

    .line 978
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "//data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    .line 980
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 986
    if-eqz v2, :cond_2

    .line 988
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 994
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-void

    .line 989
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 991
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 981
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 982
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 986
    if-eqz v1, :cond_0

    .line 988
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 989
    :catch_2
    move-exception v0

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 983
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 984
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 986
    if-eqz v1, :cond_0

    .line 988
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 989
    :catch_4
    move-exception v0

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 986
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 988
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 991
    :cond_1
    :goto_4
    throw v3

    .line 989
    :catch_5
    move-exception v0

    .line 990
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 986
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 983
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 981
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_2
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private getChameleonCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 700
    new-instance v1, Ljava/io/File;

    const-string v2, "/carrier/chameleon.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    const/4 v0, 0x0

    .line 705
    :goto_0
    return-object v0

    .line 703
    :cond_0
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "ShutdownDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@Power off sound CHAMELEON is activated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCoverType(Lcom/samsung/android/cover/CoverManager;)I
    .locals 3
    .param p1, "cm"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 488
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 489
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_0

    .line 490
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v1, -0x1

    .line 493
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    goto :goto_0
.end method

.method private getQmgCodeById(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 869
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 870
    :cond_0
    const-string v0, "WH"

    .line 872
    :cond_1
    return-object v0
.end method

.method private getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z
    .locals 3
    .param p1, "cm"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 480
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_0

    .line 481
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v1, 0x1

    .line 484
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    goto :goto_0
.end method

.method private getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    .line 709
    if-eqz p1, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 755
    .end local p1    # "soundPath":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 713
    .restart local p1    # "soundPath":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "persist.sys.omc_respath"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "skuAudioPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 715
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media/audio/ui/PowerOff.ogg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/media/audio/ui/PowerOff.ogg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 722
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "chameleonCode":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/system/media/audio/ui/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/PowerOff.ogg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 726
    .local v1, "chameleonPath":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 727
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 733
    .end local v1    # "chameleonPath":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v5, Ljava/io/File;

    const-string v6, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 734
    const-string p1, "//system/csc_contents/PowerOff.ogg"

    goto :goto_0

    .line 737
    :cond_3
    const-string v3, "//system/media/audio/ui/PowerOff.wav"

    .line 738
    .local v3, "poweroff_wav":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v6, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 739
    const-string p1, "//system/media/audio/ui/PowerOff.wav"

    goto/16 :goto_0

    .line 744
    :cond_4
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    if-eqz v5, :cond_5

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 745
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 750
    :cond_5
    const-string v2, "//system/media/audio/ui/PowerOff.ogg"

    .line 751
    .local v2, "poweroff_ogg":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v6, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 752
    const-string p1, "//system/media/audio/ui/PowerOff.ogg"

    goto/16 :goto_0

    .line 755
    :cond_6
    const/4 p1, 0x0

    goto/16 :goto_0
.end method

.method private getSystemVolume()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 399
    const/16 v1, -0x270f

    .line 400
    .local v1, "systemVolume":I
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 401
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 402
    const-string/jumbo v2, "shutdown"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 405
    :cond_0
    const-string v2, "ShutdownDialog"

    const-string v3, "!@systemVol:%d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v1
.end method

.method private prepareSound(Ljava/lang/String;)V
    .locals 9
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    .line 411
    const/4 v2, 0x0

    .line 412
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 416
    .local v4, "tempMediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 417
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 419
    const-string/jumbo v6, "situation=8;device=0"

    invoke-static {v6}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 421
    .local v5, "vol":F
    invoke-virtual {v4, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 422
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 423
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 424
    iput-object v4, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 433
    if-eqz v3, :cond_0

    .line 434
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 440
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "tempMediaPlayer":Landroid/media/MediaPlayer;
    .end local v5    # "vol":F
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-void

    .line 436
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "tempMediaPlayer":Landroid/media/MediaPlayer;
    .restart local v5    # "vol":F
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 439
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 425
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "tempMediaPlayer":Landroid/media/MediaPlayer;
    .end local v5    # "vol":F
    :catch_1
    move-exception v0

    .line 426
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    if-eqz v2, :cond_1

    .line 434
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 436
    :catch_2
    move-exception v0

    .line 437
    const-string v6, "ShutdownDialog"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 427
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    :try_start_5
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 433
    if-eqz v2, :cond_1

    .line 434
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 436
    :catch_4
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_3
    :try_start_7
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 433
    if-eqz v2, :cond_1

    .line 434
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 436
    :catch_6
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 433
    :goto_4
    if-eqz v2, :cond_2

    .line 434
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 438
    :cond_2
    :goto_5
    throw v6

    .line 436
    :catch_7
    move-exception v0

    .line 437
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "ShutdownDialog"

    const-string/jumbo v8, "sound file.close"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 429
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 427
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 425
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private readColorId()I
    .locals 5

    .prologue
    .line 876
    const/4 v1, 0x0

    .line 877
    .local v1, "id":I
    const/4 v2, 0x0

    .line 878
    .local v2, "window_type":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->readWindowType()Ljava/lang/String;

    move-result-object v2

    .line 880
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 881
    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "firstParam":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 883
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 884
    and-int/lit8 v1, v1, 0xf

    .line 888
    .end local v0    # "firstParam":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private readWindowType()Ljava/lang/String;
    .locals 8

    .prologue
    .line 892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 894
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 897
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 899
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 902
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v5, "ShutdownDialog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    if-eqz v2, :cond_0

    .line 906
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 913
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 904
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v3, :cond_3

    .line 906
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 909
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 907
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 908
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "ShutdownDialog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 909
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 907
    :catch_2
    move-exception v0

    .line 908
    const-string v5, "ShutdownDialog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 904
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    .line 906
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 909
    :cond_2
    :goto_4
    throw v5

    .line 907
    :catch_3
    move-exception v0

    .line 908
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 904
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 901
    :catch_4
    move-exception v0

    goto :goto_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method


# virtual methods
.method public appendTextLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 940
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 941
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 942
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ShutdownDialog"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 944
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 945
    return-void
.end method

.method public drawState()I
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public existAnim()Z
    .locals 1

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    .line 950
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSound()Z
    .locals 3

    .prologue
    .line 935
    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "has sound for power off : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    # getter for: Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z
    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$2800(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    # getter for: Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$2800(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 215
    const-string v2, "ShutdownDialog"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 219
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 224
    .local v1, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 228
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    .line 251
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    .line 252
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    const v3, -0xff0001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 261
    new-instance v2, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 263
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 268
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 269
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 274
    return-void
.end method

.method public prepareShutdown()V
    .locals 2

    .prologue
    .line 954
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;

    .line 956
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    .line 957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    .line 958
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    .line 959
    return-void
.end method

.method public setSilentShutdown(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 962
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    .line 963
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 973
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    .line 917
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 918
    .local v4, "endTime":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v3}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 919
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 920
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_1

    .line 921
    const-string v3, "ShutdownDialog"

    const-string v6, "!@Animation finish wait timed out"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .end local v0    # "delay":J
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 924
    .restart local v0    # "delay":J
    :cond_1
    const-string v3, "ShutdownDialog"

    const-string/jumbo v6, "wait for finish : sleep 100ms"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 927
    :catch_0
    move-exception v2

    .line 928
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "ShutdownDialog"

    const-string v6, "InterruptedException"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
