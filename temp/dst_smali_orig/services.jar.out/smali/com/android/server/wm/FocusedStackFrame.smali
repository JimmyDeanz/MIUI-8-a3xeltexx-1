.class Lcom/android/server/wm/FocusedStackFrame;
.super Ljava/lang/Object;
.source "FocusedStackFrame.java"


# static fields
.field private static final ALPHA:F = 0.3f

.field private static final DEBUG:Z = false

.field private static final DEBUG_STACK_FRAME:Z = true

.field private static final MULTIWINDOW_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "FocusedStackFrame"

.field public static final THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field private static final THICKNESS:I = 0x2


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDeskTopColor:I

.field private mDisplayId:I

.field private final mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

.field private final mFocusedFrameOutShadowSize:I

.field private mForceReDraw:Z

.field private final mInnerPaint:Landroid/graphics/Paint;

.field private mIsVisible:Z

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mLayer:I

.field private final mLineColor:I

.field final mLock:Ljava/lang/Object;

.field private final mOuterPaint:Landroid/graphics/Paint;

.field private final mScreenSize:Landroid/graphics/Rect;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mSurfaceSize:Landroid/graphics/Rect;

.field private final mThickness:I


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    iput-boolean v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iput v10, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    iput-boolean v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mIsVisible:Z

    new-instance v1, Lcom/android/server/wm/FocusedStackFrame$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/FocusedStackFrame$1;-><init>(Lcom/android/server/wm/FocusedStackFrame;)V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v2, "FocusedStackFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    iput v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mLineColor:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

    iput v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :cond_0
    :try_start_2
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "FocusedStackFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v1

    move-object v0, v7

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/wm/FocusedStackFrame;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/FocusedStackFrame;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0
.end method

.method private draw()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    const/4 v0, 0x0

    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "FocusedStackFrame"

    const-string v3, "Unable to lock canvas"

    invoke-static {v2, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "FocusedStackFrame"

    const-string v3, "Unable to lock canvas"

    invoke-static {v2, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v3, v1

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v4, v1

    iget-object v5, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    move v1, v7

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method private positionSurface(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positionSurface: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private setupSurface(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public adjustBounds(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "thick"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, p2

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, p2

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isNavigationBarVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    return-void
.end method

.method clear()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    monitor-exit v2

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBounds: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setForceReDraw(Z)V
    .locals 1
    .param p1, "isUnFocusedRectResized"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setLayer(I)V
    .locals 2
    .param p1, "layer"    # I

    .prologue
    iget v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_0
.end method

.method public setScreenSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "screenSize"    # Landroid/graphics/Rect;
    .param p2, "surfaceSize"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenSize: mSurfaceSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " surfaceSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->positionSurface(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenSize: mScreenSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/FocusedStackFrame;->clear()V

    :cond_3
    return-void
.end method

.method setVisibility(Lcom/android/server/wm/TaskStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->setupSurface(Z)V

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/FocusedStackFrame;->draw()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->setupSurface(Z)V

    goto :goto_0
.end method
