.class final Landroid/view/View$AttachInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttachInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AttachInfo$InvalidateInfo;,
        Landroid/view/View$AttachInfo$Callbacks;
    }
.end annotation


# instance fields
.field mAccessibilityFetchFlags:I

.field mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

.field mAccessibilityWindowId:I

.field mApplicationScale:F

.field mCanvas:Landroid/graphics/Canvas;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDebugLayout:Z

.field mDisabledSystemUiVisibility:I

.field mDisplay:Landroid/view/Display;

.field mDisplayState:I

.field mDrawingTime:J

.field mForceReportNewAttributes:Z

.field final mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mGlobalSystemUiVisibility:I

.field final mHandler:Landroid/os/Handler;

.field mHardwareAccelerated:Z

.field mHardwareAccelerationRequested:Z

.field mHardwareRenderer:Landroid/view/HardwareRenderer;

.field mHasNonEmptyGivenInternalInsets:Z

.field mHasSystemUiListeners:Z

.field mHasWindowFocus:Z

.field mHighContrastText:Z

.field mIWindowId:Landroid/view/IWindowId;

.field mIgnoreDirtyState:Z

.field mInTouchMode:Z

.field final mInvalidateChildLocation:[I

.field mIsExpandedMode:Z

.field mIsOpen:Z

.field mKeepScreenOn:Z

.field final mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

.field mLastPerformClickRawPoint:[F

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanRequested:Z

.field mPanelParentWindowToken:Landroid/os/IBinder;

.field mPendingAnimatingRenderNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field final mPoint:Landroid/graphics/Point;

.field mRecomputeGlobalAttributes:Z

.field final mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

.field mRootView:Landroid/view/View;

.field mScalingRequired:Z

.field final mScrollContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mSession:Landroid/view/IWindowSession;

.field mSetIgnoreDirtyState:Z

.field final mStableInsets:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpInvalRect:Landroid/graphics/Rect;

.field final mTmpLocation:[I

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpOutline:Landroid/graphics/Outline;

.field final mTmpRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpTransformLocation:[F

.field final mTmpTransformRect:Landroid/graphics/RectF;

.field final mTmpTransformRect1:Landroid/graphics/RectF;

.field final mTmpTransformation:Landroid/view/animation/Transformation;

.field final mTransparentLocation:[I

.field final mTreeObserver:Landroid/view/ViewTreeObserver;

.field mTurnOffWindowResizeAnim:Z

.field mUnbufferedDispatchRequested:Z

.field mUse32BitDrawingCache:Z

.field mViewRequestingLayout:Landroid/view/View;

.field final mViewRootImpl:Landroid/view/ViewRootImpl;

.field mViewScrollChanged:Z

.field mViewVisibilityChanged:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/IWindow;

.field mWindowId:Landroid/view/WindowId;

.field mWindowLeft:I

.field final mWindowToken:Landroid/os/IBinder;

.field mWindowTop:I

.field mWindowVisibility:I


# direct methods
.method constructor <init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V
    .locals 6
    .param p1, "session"    # Landroid/view/IWindowSession;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "effectPlayer"    # Landroid/view/View$AttachInfo$Callbacks;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 23340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22997
    iput-boolean v2, p0, Landroid/view/View$AttachInfo;->mIsExpandedMode:Z

    .line 23019
    iput v2, p0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 23050
    iput-boolean v1, p0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    .line 23063
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 23070
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 23077
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 23084
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    .line 23090
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 23099
    new-instance v3, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v3}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 23112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    .line 23114
    new-instance v3, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v3}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    .line 23141
    iput-boolean v2, p0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 23216
    new-array v3, v5, [I

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 23222
    new-array v3, v5, [I

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 23228
    new-array v3, v5, [I

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    .line 23234
    new-array v3, v5, [F

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 23240
    new-instance v3, Landroid/view/ViewTreeObserver;

    invoke-direct {v3}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 23262
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 23267
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 23272
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect1:Landroid/graphics/RectF;

    .line 23277
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTmpRectList:Ljava/util/List;

    .line 23282
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 23287
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 23292
    new-instance v3, Landroid/graphics/Outline;

    invoke-direct {v3}, Landroid/graphics/Outline;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTmpOutline:Landroid/graphics/Outline;

    .line 23297
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 23302
    const v3, 0x7fffffff

    iput v3, p0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 23320
    const-string v3, "debug.layout"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 23325
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 23341
    iput-object p1, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    .line 23342
    iput-object p2, p0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    .line 23343
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 23344
    iput-object p3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    .line 23345
    iput-object p4, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 23346
    iput-object p5, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 23347
    iput-object p6, p0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    .line 23350
    iget-object v3, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    if-eqz v3, :cond_0

    .line 23352
    :try_start_0
    iget-object v3, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    invoke-interface {v3}, Landroid/view/IWindowSession;->getCoverStateSwitch()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/View$AttachInfo;->mIsOpen:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23360
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-ne v3, v5, :cond_2

    :goto_1
    iput-boolean v1, p0, Landroid/view/View$AttachInfo;->mIsExpandedMode:Z

    .line 23361
    iget-boolean v1, p0, Landroid/view/View$AttachInfo;->mIsExpandedMode:Z

    if-eqz v1, :cond_1

    .line 23362
    new-array v1, v5, [F

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mLastPerformClickRawPoint:[F

    .line 23363
    :cond_1
    return-void

    .line 23353
    :catch_0
    move-exception v0

    .line 23354
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v1, p0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    move v1, v2

    .line 23360
    goto :goto_1
.end method


# virtual methods
.method public setDisplay(Landroid/view/Display;)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 23380
    return-void
.end method
