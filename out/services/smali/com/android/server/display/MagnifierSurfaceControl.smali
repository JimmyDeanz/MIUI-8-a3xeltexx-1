.class final Lcom/android/server/display/MagnifierSurfaceControl;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;,
        Lcom/android/server/display/MagnifierSurfaceControl$Border;,
        Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;,
        Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    }
.end annotation


# static fields
.field private static final CREATED:I = 0x1

.field private static final DEBUG:Z = true

.field private static final FEATURE_OVERLAYMAGNIFIER:Ljava/lang/String; = "com.sec.feature.overlaymagnifier"

.field private static final HIDDEN:I = 0x3

.field private static final IDLE:I = 0x0

.field private static final SHOWN:I = 0x2

.field private static final STABILIZER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MagnifierSurfaceControl"

.field private static isOldMagnifier:Z

.field private static mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

.field private static mCurrentDisplayId:I

.field static mCursorX:F

.field static mCursorY:F

.field private static mDeviceWidth:I

.field private static mDeviceheight:I

.field private static mSharedPref:Landroid/content/SharedPreferences;


# instance fields
.field private fingerMagnifierState:I

.field mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFxSession:Landroid/view/SurfaceSession;

.field private mHandler:Landroid/os/Handler;

.field mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mLastOffsetX:F

.field private mLastOffsetY:F

.field private mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

.field private final mLock:Ljava/lang/Object;

.field private mMagPadSize:Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

.field mMagnifierSizeObserver:Landroid/database/ContentObserver;

.field mMagnifierZoomObserver:Landroid/database/ContentObserver;

.field private mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private magSize:I

.field private scaleSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorX:F

    .line 115
    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorY:F

    .line 116
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "policy"    # Lcom/android/server/display/MagnifierDisplayPolicy;
    .param p5, "displayId"    # I

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    .line 111
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetX:F

    .line 112
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetY:F

    .line 1246
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$2;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$2;-><init>(Lcom/android/server/display/MagnifierSurfaceControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    .line 1260
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$3;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$3;-><init>(Lcom/android/server/display/MagnifierSurfaceControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagnifierZoomObserver:Landroid/database/ContentObserver;

    .line 1272
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$4;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$4;-><init>(Lcom/android/server/display/MagnifierSurfaceControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagnifierSizeObserver:Landroid/database/ContentObserver;

    .line 129
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    .line 130
    iput-object p4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 131
    iput-object p2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    .line 132
    iput-object p3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    .line 133
    sput p5, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    .line 135
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 138
    const-string/jumbo v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 139
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "magnifier_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mSharedPref:Landroid/content/SharedPreferences;

    .line 140
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierSurfaceControl$1;-><init>(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 174
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->addOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 179
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->fingerMagnifierState:I

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/MagnifierSurfaceControl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/MagnifierSurfaceControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/MagnifierSurfaceControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->showWindowView()V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z

    return v0
.end method

.method static synthetic access$1800()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->hide()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->destroyMainSurface()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->createDefaultSurface()V

    return-void
.end method

.method static synthetic access$4200()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/android/server/display/MagnifierSurfaceControl;->mDeviceheight:I

    return v0
.end method

.method static synthetic access$4202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 81
    sput p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDeviceheight:I

    return p0
.end method

.method static synthetic access$4300()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/android/server/display/MagnifierSurfaceControl;->mDeviceWidth:I

    return v0
.end method

.method static synthetic access$4302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 81
    sput p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDeviceWidth:I

    return p0
.end method

.method static synthetic access$4600(Lcom/android/server/display/MagnifierSurfaceControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->scaleSize:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/display/MagnifierSurfaceControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->scaleSize:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagPadSize:Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/display/MagnifierSurfaceControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->magSize:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/server/display/MagnifierSurfaceControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->magSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 81
    sput-object p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createDefaultSurface()V
    .locals 11

    .prologue
    .line 380
    iget-object v10, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 382
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    .line 383
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    .line 384
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "OverlayMagnifier"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const v6, -0x7ffffbfc

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 387
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 388
    .local v7, "defaultDisplay":Landroid/view/Display;
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 389
    .local v8, "defaultDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 393
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v7}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 395
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 396
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 397
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->allocateBuffers()V

    .line 398
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x1e847e

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    .end local v7    # "defaultDisplay":Landroid/view/Display;
    .end local v8    # "defaultDisplayInfo":Landroid/view/DisplayInfo;
    :goto_0
    :try_start_1
    monitor-exit v10

    .line 403
    return-void

    .line 399
    :catch_0
    move-exception v9

    .line 400
    .local v9, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-virtual {v9}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    goto :goto_0

    .line 402
    .end local v9    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private destroyMainSurface()V
    .locals 3

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_0
    const-string v0, "MagnifierSurfaceControl"

    const-string/jumbo v2, "destroyMainSurface"

    invoke-static {v0, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 445
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 446
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    .line 450
    monitor-exit v1

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hide()V
    .locals 4

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    :try_start_0
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v3, "hide"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 214
    const-string v1, "MagnifierSurfaceControl"

    const-string v3, "SurfaceControl is null, return"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit v2

    .line 237
    :goto_0
    return-void

    .line 218
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetX:F

    .line 219
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetY:F

    .line 221
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 222
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 223
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 224
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    if-eqz v1, :cond_1

    .line 225
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->hide()V

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    const/4 v1, 0x1

    const/4 v3, -0x1

    :try_start_1
    invoke-static {v1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 235
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    .line 236
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v3, "failed to set hovering spen icon"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private isOldMagnifier(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 369
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.android.settings"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 370
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 371
    .local v2, "meta_data":Landroid/os/Bundle;
    const-string/jumbo v4, "settings_apk_name"

    const-string/jumbo v5, "none"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecSettings2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    const/4 v4, 0x1

    .line 377
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "meta_data":Landroid/os/Bundle;
    :goto_0
    return v4

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private show(Landroid/view/MagnificationSpec;)V
    .locals 11
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    const/4 v10, 0x2

    .line 240
    iget-object v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 244
    :try_start_0
    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    if-nez v4, :cond_0

    .line 245
    const-string v4, "MagnifierSurfaceControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mState is wrong:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    monitor-exit v5

    .line 288
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v4, :cond_1

    .line 249
    const-string v4, "MagnifierSurfaceControl"

    const-string v6, "SurfaceControl is null, return"

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    monitor-exit v5

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 253
    :cond_1
    :try_start_1
    iget v4, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetX:F

    .line 254
    iget v4, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetY:F

    .line 256
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v1

    .line 258
    .local v1, "displayInfo":Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceOffset()Landroid/graphics/Point;

    move-result-object v3

    .line 259
    .local v3, "pt":Landroid/graphics/Point;
    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 260
    .local v0, "cropRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :try_start_2
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 263
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 264
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, p1, Landroid/view/MagnificationSpec;->scale:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p1, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 265
    sget-object v4, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->setPosition(Landroid/graphics/Point;)V

    .line 266
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v4, :cond_2

    .line 267
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getPointOffset()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->setPosition(Landroid/graphics/Point;)V

    .line 269
    :cond_2
    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    if-eq v4, v10, :cond_3

    .line 270
    const-string v4, "MagnifierSurfaceControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    .line 272
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 273
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    .line 274
    sget-object v4, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v4}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->show()V

    .line 275
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v4, :cond_3

    .line 276
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v4}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    const/16 v4, 0x13

    const/4 v6, -0x1

    :try_start_3
    invoke-static {v4, v6}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    :cond_3
    :goto_1
    :try_start_4
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 287
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "MagnifierSurfaceControl"

    const-string/jumbo v6, "failed to set hovering spen icon"

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 285
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private showWindowView()V
    .locals 2

    .prologue
    .line 350
    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->fingerMagnifierState:I

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z

    if-eqz v1, :cond_1

    .line 352
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 353
    .local v0, "spec":Landroid/view/MagnificationSpec;
    sget v1, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorX:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 354
    sget v1, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorY:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 355
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getScale()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 357
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->updateMagnifierLayoutParams()V

    .line 358
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->isPadVisible:Z
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$1300()Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl$Border;->addMagnifierView()V
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$1400(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    .line 360
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl$Border;->setEventListener()V
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$1500(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    .line 362
    :cond_0
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl$Border;->updateViewLayout()V
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$1600(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    .line 364
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_1
    return-void
.end method


# virtual methods
.method public create()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 292
    const-string v0, "MagnifierSurfaceControl"

    const-string/jumbo v1, "create"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->createDefaultSurface()V

    .line 295
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 297
    .local v6, "defaultDisplay":Landroid/view/Display;
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    .line 301
    .local v7, "defaultDisplayInfo":Landroid/view/DisplayInfo;
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/display/MagnifierDisplayPolicy;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/MagnifierSurfaceControl$Border;-><init>(Landroid/content/Context;IIILcom/android/server/display/MagnifierDisplayPolicy;)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .line 303
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->isHoverZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPointerSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->getPadding()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPadding(Landroid/graphics/Rect;)V

    .line 311
    iput v12, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    .line 312
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    iget v2, v7, Landroid/view/DisplayInfo;->defaultModeId:I

    sget v3, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/display/MagnifierSurfaceControl$Listener;->onCreateSurface(Landroid/view/Surface;II)V

    .line 315
    :cond_1
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->fingerMagnifierState:I

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z

    if-eqz v0, :cond_3

    .line 316
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagPadSize:Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    .line 317
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagPadSize:Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    iget-boolean v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->isTablet:Z

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hover_zoom_magnifier_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 319
    .local v11, "value":I
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hover_zoom_magnifier_size"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    .end local v11    # "value":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hover_zoom_magnifier_size"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->magSize:I

    .line 322
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hover_zoom_value"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->scaleSize:I

    .line 323
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hover_zoom_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagnifierZoomObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 324
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hover_zoom_magnifier_size"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagnifierSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 326
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.android.app.accesscontrol.PAUSE_MAGNIFIER"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 332
    .local v10, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mDeviceheight:I

    .line 333
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mDeviceWidth:I

    .line 334
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pos_x"

    sget v2, Lcom/android/server/display/MagnifierSurfaceControl;->mDeviceWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorX:F

    .line 335
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagPadSize:Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    iget-boolean v0, v0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->isTablet:Z

    if-eqz v0, :cond_4

    .line 336
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pos_y"

    sget v2, Lcom/android/server/display/MagnifierSurfaceControl;->mDeviceheight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorY:F

    .line 340
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagPadSize:Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    iget-object v1, v1, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->magSize:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagPadSize:Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    iget-object v2, v2, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->magSize:I

    aget v2, v2, v3

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->scaleSize:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->showWindowView()V

    .line 347
    .end local v9    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_3
    return-void

    .line 338
    .restart local v9    # "filter":Landroid/content/IntentFilter;
    .restart local v10    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pos_y"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorY:F

    goto :goto_0

    .line 342
    :catch_0
    move-exception v8

    .line 343
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 7

    .prologue
    .line 454
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 455
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 456
    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->fingerMagnifierState:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z

    if-eqz v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "hover_zoom_value"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagnifierZoomObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 458
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "hover_zoom_magnifier_size"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mMagnifierSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 459
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_display_magnification_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_button_onoff"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->destroyMainSurface()V

    .line 470
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    .line 471
    sget-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->dismiss()V

    .line 472
    sget-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->removeMagnifierView()V

    .line 473
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .line 474
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->dismiss()V

    .line 476
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    const/4 v2, 0x1

    const/4 v4, -0x1

    :try_start_3
    invoke-static {v2, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 483
    :cond_1
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    invoke-virtual {v2, v4}, Lcom/android/server/display/MagnifierDisplayPolicy;->removeOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V

    .line 484
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 485
    monitor-exit v3

    .line 486
    return-void

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 485
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 479
    :catch_1
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v2, "MagnifierSurfaceControl"

    const-string/jumbo v4, "failed to set hovering spen icon"

    invoke-static {v2, v4}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/MagnifierDisplayPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public isSupportPenUsp10(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1331
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 1332
    .local v0, "uspLevel":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDisplayAdded(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 417
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 418
    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayAdded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 437
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 426
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 428
    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayRemoved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->dismiss()V

    .line 432
    :cond_0
    return-void
.end method

.method public updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    const/4 v1, 0x0

    .line 197
    if-eqz p1, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->isHoverZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetX:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetY:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 201
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/MagnifierSurfaceControl;->show(Landroid/view/MagnificationSpec;)V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->hide()V

    goto :goto_0
.end method
