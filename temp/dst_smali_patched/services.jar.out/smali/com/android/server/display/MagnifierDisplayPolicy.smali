.class final Lcom/android/server/display/MagnifierDisplayPolicy;
.super Ljava/lang/Object;
.source "MagnifierPolicy.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;,
        Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SECTOR_CENTER:I = 0x3

.field private static final SECTOR_LEFT:I = 0x1

.field private static final SECTOR_NONE:I = 0x0

.field private static final SECTOR_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MagnifierDisplayPolicy"


# instance fields
.field private mBorderPadding:F

.field private mContext:Landroid/content/Context;

.field private mCropHeight:F

.field private mCropWidth:F

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field mDm:Landroid/hardware/display/IDisplayManager;

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private final mHoverZoomObserver:Landroid/database/ContentObserver;

.field private mIsHoverZoom:Z

.field private mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

.field private mOnSizeChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerMargin:F

.field private mPointerSize:I

.field private mScale:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;-><init>(Lcom/android/server/display/MagnifierDisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerSize:I

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/MagnifierDisplayPolicy$1;-><init>(Lcom/android/server/display/MagnifierDisplayPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHoverZoomObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_magnifier"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_magnifier"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHoverZoomObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105033c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerSize:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/android/server/display/MagnifierDisplayPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/MagnifierDisplayPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/MagnifierDisplayPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/MagnifierDisplayPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPointMargin()V

    return-void
.end method

.method private setPointMargin()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105033b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    goto :goto_0
.end method

.method private updateDisplayInfo(Landroid/view/DisplayInfo;)Z
    .locals 2
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPrecision()V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkUpdateDisplayInfo()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    const-string v3, "display"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {p0, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->updateDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .local v2, "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v5
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    .locals 26
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    .local v15, "x":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .local v16, "y":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    .local v11, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v4, v15, v17

    .local v4, "left":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v14, v16, v17

    .local v14, "top":F
    const/4 v12, 0x0

    .local v12, "surfaceOffsetX":F
    const/4 v13, 0x0

    .local v13, "surfaceOffsetY":F
    const/4 v2, 0x0

    .local v2, "absOffsetX":F
    const/4 v3, 0x0

    .local v3, "absOffsetY":F
    const/4 v5, 0x0

    .local v5, "pointOffsetX":F
    const/4 v6, 0x0

    .local v6, "pointOffsetY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    cmpg-float v17, v15, v17

    if-gez v17, :cond_3

    const/16 v17, 0x0

    cmpg-float v17, v4, v17

    if-gez v17, :cond_2

    const/4 v12, 0x0

    const/4 v4, 0x0

    mul-float v5, v15, v11

    :goto_0
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    cmpg-float v17, v16, v17

    if-gez v17, :cond_6

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    mul-float v6, v16, v11

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v5

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v6

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    if-gez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    if-gez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    move/from16 v17, v0

    add-float v8, v4, v17

    .local v8, "rectLeft":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    move/from16 v17, v0

    add-float v10, v14, v17

    .local v10, "rectTop":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    add-float v17, v17, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    move/from16 v18, v0

    sub-float v9, v17, v18

    .local v9, "rectRight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    add-float v17, v17, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    move/from16 v18, v0

    sub-float v7, v17, v18

    .local v7, "rectBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$300(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Rect;

    move-result-object v17

    float-to-int v0, v8

    move/from16 v18, v0

    float-to-int v0, v10

    move/from16 v19, v0

    const v20, 0x3d4ccccd    # 0.05f

    add-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const v21, 0x3d4ccccd    # 0.05f

    add-float v21, v21, v7

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    float-to-int v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v8, v19

    mul-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    float-to-int v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v10, v19

    mul-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    return-object v17

    .end local v7    # "rectBottom":F
    .end local v8    # "rectLeft":F
    .end local v9    # "rectRight":F
    .end local v10    # "rectTop":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v17, v17, v15

    mul-float v12, v17, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    div-float v5, v17, v18

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    cmpl-float v17, v15, v17

    if-lez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    cmpl-float v17, v4, v17

    if-lez v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v11

    mul-float v12, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v15

    mul-float v18, v18, v11

    sub-float v5, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    sub-float v4, v17, v18

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    sub-float v2, v17, v18

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v18, v18, v15

    mul-float v18, v18, v11

    sub-float v12, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v5, v17, v18

    goto :goto_5

    :cond_5
    neg-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v11, v18

    mul-float v12, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v2, v15, v17

    move v5, v15

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    add-float v17, v17, v18

    cmpg-float v17, v16, v17

    if-gez v17, :cond_7

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v13, v17, v18

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    div-float v6, v17, v18

    goto/16 :goto_2

    :cond_7
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    sub-double v20, v20, v22

    cmpl-double v17, v18, v20

    if-lez v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    cmpl-float v17, v16, v17

    if-lez v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    sub-float v14, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v11

    sub-float v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v13, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v16

    mul-float v18, v18, v11

    sub-float v6, v17, v18

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v3, v17, v18

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v11, v18

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    neg-float v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v16

    mul-float v18, v18, v11

    sub-float v6, v17, v18

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v11, v17

    mul-float v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v13, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v6, v17, v18

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v18, v18, v16

    mul-float v18, v18, v11

    sub-float v13, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v6, v17, v18

    goto/16 :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    sub-float v3, v17, v18

    goto/16 :goto_2

    :cond_c
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v11, v17

    mul-float v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v13, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v3, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v6, v17, v18

    goto/16 :goto_2

    :cond_d
    move/from16 v6, v16

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_4
.end method

.method public getHeight()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPointerSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerSize:I

    return v0
.end method

.method public getPrecision(F)F
    .locals 3
    .param p1, "length"    # F

    .prologue
    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    sub-float v1, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .local v0, "diff":F
    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    sub-float/2addr v1, p1

    return v1
.end method

.method public getScale()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    return-object v0
.end method

.method public isHoverZoom()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    return v0
.end method

.method public removeOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    return-void
.end method

.method public setPrecision()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    invoke-virtual {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    invoke-virtual {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    invoke-direct {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPointMargin()V

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    invoke-virtual {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Last:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateSettings(IIF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .prologue
    iput p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    iput p2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    iput p3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    iget v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .local v1, "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    goto :goto_0

    .end local v1    # "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    :cond_0
    return-void
.end method
