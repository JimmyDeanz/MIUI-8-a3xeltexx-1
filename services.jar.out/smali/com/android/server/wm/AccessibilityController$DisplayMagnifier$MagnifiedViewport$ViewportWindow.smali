.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewportWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;
    }
.end annotation


# static fields
.field private static final SURFACE_TITLE:Ljava/lang/String; = "Magnification Overlay"


# instance fields
.field private mAlpha:I

.field private final mAnimationController:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

.field private final mBounds:Landroid/graphics/Region;

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private mInvalidated:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mShown:Z

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field final synthetic this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V
    .locals 12
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 748
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    .line 735
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    .line 736
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    .line 739
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    .line 749
    const/4 v8, 0x0

    .line 751
    .local v8, "surfaceControl":Landroid/view/SurfaceControl;
    :try_start_0
    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 752
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "Magnification Overlay"

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v8    # "surfaceControl":Landroid/view/SurfaceControl;
    .local v0, "surfaceControl":Landroid/view/SurfaceControl;
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 759
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 762
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x7eb

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 765
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v10, v10}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 766
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 769
    :cond_0
    new-instance v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

    iget-object v2, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAnimationController:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

    .line 772
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 773
    .local v9, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010390

    invoke-virtual {v1, v2, v9, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 775
    iget v1, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 777
    .local v7, "borderColor":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 778
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 779
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 781
    iput-boolean v11, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    .line 782
    return-void

    .line 755
    .end local v0    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v7    # "borderColor":I
    .end local v9    # "typedValue":Landroid/util/TypedValue;
    .restart local v8    # "surfaceControl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v1

    move-object v0, v8

    .end local v8    # "surfaceControl":Landroid/view/SurfaceControl;
    .restart local v0    # "surfaceControl":Landroid/view/SurfaceControl;
    goto :goto_0
.end method


# virtual methods
.method public drawIfNeeded()V
    .locals 6

    .prologue
    .line 851
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    iget-object v2, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 852
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    if-nez v2, :cond_0

    .line 853
    monitor-exit v3

    .line 891
    :goto_0
    return-void

    .line 855
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    const/4 v0, 0x0

    .line 859
    .local v0, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 862
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I
    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I
    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 863
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 872
    :goto_1
    if-nez v0, :cond_2

    .line 873
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 890
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 878
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    const/4 v2, 0x0

    :try_start_3
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 879
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 880
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v1

    .line 881
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 883
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 885
    iget v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    if-lez v2, :cond_3

    .line 886
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 890
    :goto_2
    monitor-exit v3

    goto :goto_0

    .line 888
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 869
    .end local v1    # "path":Landroid/graphics/Path;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 867
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 801
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    monitor-exit v1

    return v0

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "dirtyRect"    # Landroid/graphics/Rect;

    .prologue
    .line 840
    if-eqz p1, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 845
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    .line 846
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 847
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public releaseSurface()V
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 895
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 896
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 807
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    if-ne v0, p1, :cond_0

    .line 808
    monitor-exit v1

    .line 816
    :goto_0
    return-void

    .line 810
    :cond_0
    iput p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    .line 811
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 815
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBounds(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Region;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    monitor-exit v1

    .line 829
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 824
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 828
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShown(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 786
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z

    if-ne v0, p1, :cond_0

    .line 787
    monitor-exit v1

    .line 795
    :goto_0
    return-void

    .line 789
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAnimationController:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->onFrameShownStateChanged(ZZ)V

    .line 794
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSize()V
    .locals 4

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 834
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 835
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 836
    monitor-exit v1

    .line 837
    return-void

    .line 836
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
