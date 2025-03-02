.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$1;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    }
.end annotation


# static fields
.field private static final ENFORCE_NODE_TREE_CONSISTENT:Z


# instance fields
.field private mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final mHandler:Landroid/os/Handler;

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private final mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 4
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    return-void
.end method

.method static synthetic access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .locals 1
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;

    .prologue
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;

    .prologue
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto :goto_0
.end method

.method private adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V
    .locals 3
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "infoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/graphics/Point;Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    :cond_2
    if-eqz p2, :cond_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 13
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v9, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .local v2, "boundsInParent":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->scale(F)V

    :cond_2
    if-eqz p2, :cond_3

    iget v9, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->scale(F)V

    iget v9, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->scale(F)V

    iget v9, p2, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v9, v9

    iget v10, p2, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v10, v10

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v1, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v9, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    if-eqz v9, :cond_0

    iget v9, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget v10, p2, Landroid/view/MagnificationSpec;->scale:F

    mul-float v6, v9, v10

    .local v6, "scale":F
    iget-object v8, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .local v8, "visibleWinFrame":Landroid/graphics/Rect;
    iget v9, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    iget v10, p2, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    iget v10, p2, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    iget v9, v8, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v10, v10, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    iget v9, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v10, v10, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v5, v9, Landroid/graphics/Point;->x:I

    .local v5, "displayWidth":I
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v4, v9, Landroid/graphics/Point;->y:I

    .local v4, "displayHeight":I
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .local v7, "visibleDisplayFrame":Landroid/graphics/Rect;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    :cond_4
    iget v9, v3, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto/16 :goto_0
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V
    .locals 5
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "infoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v2, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    iget v3, p1, Landroid/os/Message;->arg1:I

    .local v3, "flags":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .local v0, "accessibilityViewId":I
    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .local v9, "virtualDescendantId":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .local v5, "interactionId":I
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/view/MagnificationSpec;

    .local v8, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Region;

    .local v6, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_3

    :cond_0
    :try_start_1
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, v4, v8}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v8, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    if-eq v10, v11, :cond_1

    invoke-virtual {v8}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_1
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    if-ne v10, v11, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v3, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v7, 0x0

    .local v7, "root":Landroid/view/View;
    const v10, 0x7fffffff

    if-ne v0, v10, :cond_6

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    :goto_2
    if-eqz v7, :cond_4

    invoke-direct {p0, v7}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    invoke-virtual {v10, v7, v9, v3, v4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :try_start_3
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, v4, v8}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v8, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    if-eq v10, v11, :cond_5

    invoke-virtual {v8}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_5
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    if-ne v10, v11, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    goto :goto_1

    :cond_6
    :try_start_4
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    goto :goto_2

    .end local v7    # "root":Landroid/view/View;
    :catchall_0
    move-exception v10

    :try_start_5
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, v4, v8}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v8, :cond_7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-eq v11, v12, :cond_7

    invoke-virtual {v8}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_7
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    if-eqz v6, :cond_8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-ne v11, v12, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    :cond_8
    throw v10

    :catch_0
    move-exception v11

    goto :goto_4

    .restart local v7    # "root":Landroid/view/View;
    :catch_1
    move-exception v10

    goto :goto_3

    .end local v7    # "root":Landroid/view/View;
    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 22
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .local v5, "flags":I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .local v16, "text":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v15, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v15, Landroid/view/MagnificationSpec;

    .local v15, "spec":Landroid/view/MagnificationSpec;
    iget v2, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .local v2, "accessibilityViewId":I
    iget v0, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v18, v0

    .local v18, "virtualDescendantId":I
    iget v11, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .local v11, "interactionId":I
    iget-object v12, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/Region;

    .local v12, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v9, 0x0

    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v19, :cond_3

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v15, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    invoke-virtual {v15}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-eqz v12, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    invoke-virtual {v12}, Landroid/graphics/Region;->recycle()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v5, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v14, 0x0

    .local v14, "root":Landroid/view/View;
    const v19, 0x7fffffff

    move/from16 v0, v19

    if-eq v2, v0, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v14

    :goto_2
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual {v14}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v13

    .local v13, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v13, :cond_8

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .end local v13    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v15, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    invoke-virtual {v15}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    if-eqz v12, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    invoke-virtual {v12}, Landroid/graphics/Region;->recycle()V

    goto/16 :goto_1

    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_2

    .restart local v13    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_7
    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    goto :goto_3

    :cond_8
    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .local v7, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/16 v19, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v14, v7, v0, v1}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, "viewCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .local v6, "foundView":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v13

    if-eqz v13, :cond_a

    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .local v10, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v10, :cond_9

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v10    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_9
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .end local v6    # "foundView":Landroid/view/View;
    .end local v7    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8    # "i":I
    .end local v13    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v14    # "root":Landroid/view/View;
    .end local v17    # "viewCount":I
    :catchall_0
    move-exception v19

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v15, :cond_b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v20

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    invoke-virtual {v15}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_7
    if-eqz v12, :cond_c

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v20

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    invoke-virtual {v12}, Landroid/graphics/Region;->recycle()V

    :cond_c
    throw v19

    :catch_0
    move-exception v20

    goto :goto_7

    .restart local v14    # "root":Landroid/view/View;
    :catch_1
    move-exception v19

    goto/16 :goto_4

    .end local v14    # "root":Landroid/view/View;
    :catch_2
    move-exception v19

    goto/16 :goto_0
.end method

.method private findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    iget v3, p1, Landroid/os/Message;->arg1:I

    .local v3, "flags":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .local v0, "accessibilityViewId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .local v5, "interactionId":I
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v9, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/view/MagnificationSpec;

    .local v9, "spec":Landroid/view/MagnificationSpec;
    iget-object v10, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "viewId":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Region;

    .local v6, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_3

    :cond_0
    :try_start_1
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v9, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-eq v11, v12, :cond_1

    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_1
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-ne v11, v12, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v3, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v8, 0x0

    .local v8, "root":Landroid/view/View;
    const v11, 0x7fffffff

    if-eq v0, v11, :cond_5

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .local v7, "resolvedViewId":I
    if-gtz v7, :cond_6

    :try_start_3
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v9, :cond_4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-eq v11, v12, :cond_4

    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_4
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-ne v11, v12, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    goto :goto_1

    .end local v7    # "resolvedViewId":I
    :cond_5
    :try_start_4
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_2

    .restart local v7    # "resolvedViewId":I
    :cond_6
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v11, :cond_7

    new-instance v11, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v11, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    :cond_7
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v11, v7, v4}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v11}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v7    # "resolvedViewId":I
    :cond_8
    :try_start_5
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v9, :cond_9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-eq v11, v12, :cond_9

    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_9
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-ne v11, v12, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    goto/16 :goto_1

    .end local v8    # "root":Landroid/view/View;
    :catchall_0
    move-exception v11

    :try_start_6
    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v9, :cond_a

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    if-eq v12, v13, :cond_a

    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_a
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    if-eqz v6, :cond_b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    if-ne v12, v13, :cond_b

    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    :cond_b
    throw v11

    :catch_0
    move-exception v12

    goto :goto_5

    .restart local v8    # "root":Landroid/view/View;
    :catch_1
    move-exception v11

    goto :goto_4

    .restart local v7    # "resolvedViewId":I
    :catch_2
    move-exception v11

    goto/16 :goto_3

    .end local v7    # "resolvedViewId":I
    .end local v8    # "root":Landroid/view/View;
    :catch_3
    move-exception v11

    goto/16 :goto_0
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .locals 19
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .local v5, "flags":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    .local v6, "focusType":I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget v9, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .local v9, "interactionId":I
    iget v2, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    .local v2, "accessibilityViewId":I
    iget v15, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .local v15, "virtualDescendantId":I
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v13, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v13, Landroid/view/MagnificationSpec;

    .local v13, "spec":Landroid/view/MagnificationSpec;
    iget-object v10, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Region;

    .local v10, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v7, 0x0

    .local v7, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v16, :cond_3

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v13, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    invoke-virtual {v13}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    invoke-interface {v4, v7, v9}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-eqz v10, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Region;->recycle()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v5, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v12, 0x0

    .local v12, "root":Landroid/view/View;
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v2, v0, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v12

    :goto_2
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_7

    packed-switch v6, :pswitch_data_0

    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unknown focus type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v12    # "root":Landroid/view/View;
    :catchall_0
    move-exception v16

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v13, :cond_4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    invoke-virtual {v13}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    invoke-interface {v4, v7, v9}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Region;->recycle()V

    :cond_5
    throw v16

    .restart local v12    # "root":Landroid/view/View;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .local v8, "host":Landroid/view/View;
    if-eqz v8, :cond_7

    invoke-static {v8, v12}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v16

    if-nez v16, :cond_9

    .end local v8    # "host":Landroid/view/View;
    :cond_7
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v13, :cond_8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    invoke-virtual {v13}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    invoke-interface {v4, v7, v9}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    if-eqz v10, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Region;->recycle()V

    goto/16 :goto_1

    .restart local v8    # "host":Landroid/view/View;
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v11

    .local v11, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    goto :goto_4

    :cond_a
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    goto/16 :goto_4

    .end local v8    # "host":Landroid/view/View;
    .end local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :pswitch_1
    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v14

    .local v14, "target":Landroid/view/View;
    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v11

    .restart local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v11, :cond_b

    invoke-virtual {v11, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    :cond_b
    if-nez v7, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    goto/16 :goto_4

    .end local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v12    # "root":Landroid/view/View;
    .end local v14    # "target":Landroid/view/View;
    :catch_0
    move-exception v17

    goto/16 :goto_3

    .restart local v12    # "root":Landroid/view/View;
    :catch_1
    move-exception v16

    goto :goto_5

    .end local v12    # "root":Landroid/view/View;
    :catch_2
    move-exception v16

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4
    .param p1, "accessibilityId"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    goto :goto_0
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    iget v4, p1, Landroid/os/Message;->arg1:I

    .local v4, "flags":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .local v0, "accessibilityViewId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .local v3, "direction":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .local v5, "interactionId":I
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v10, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Landroid/view/MagnificationSpec;

    .local v10, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Region;

    .local v6, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v7, 0x0

    .local v7, "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_3

    :cond_0
    :try_start_1
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, v7, v10}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v10, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-eq v11, v12, :cond_1

    invoke-virtual {v10}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_1
    invoke-direct {p0, v7, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    invoke-interface {v2, v7, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-ne v11, v12, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v4, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v9, 0x0

    .local v9, "root":Landroid/view/View;
    const v11, 0x7fffffff

    if-eq v0, v11, :cond_6

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_4

    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v8

    .local v8, "nextView":Landroid/view/View;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .end local v8    # "nextView":Landroid/view/View;
    :cond_4
    :try_start_3
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, v7, v10}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-eq v11, v12, :cond_5

    invoke-virtual {v10}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_5
    invoke-direct {p0, v7, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    invoke-interface {v2, v7, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    if-ne v11, v12, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    goto :goto_1

    :cond_6
    :try_start_4
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .end local v9    # "root":Landroid/view/View;
    :catchall_0
    move-exception v11

    :try_start_5
    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, v7, v10}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v10, :cond_7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    if-eq v12, v13, :cond_7

    invoke-virtual {v10}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_7
    invoke-direct {p0, v7, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    invoke-interface {v2, v7, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    if-eqz v6, :cond_8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    if-ne v12, v13, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    :cond_8
    throw v11

    :catch_0
    move-exception v12

    goto :goto_4

    .restart local v9    # "root":Landroid/view/View;
    :catch_1
    move-exception v11

    goto :goto_3

    .end local v9    # "root":Landroid/view/View;
    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v12, 0x7fffffff

    iget v5, p1, Landroid/os/Message;->arg1:I

    .local v5, "flags":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .local v0, "accessibilityViewId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget v10, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .local v10, "virtualDescendantId":I
    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .local v1, "action":I
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .local v6, "interactionId":I
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .local v3, "arguments":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v8, 0x0

    .local v8, "succeeded":Z
    :try_start_0
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v11, v11, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v11, :cond_0

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v11, v11, Landroid/view/ViewRootImpl;->mPausedForTransition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_1

    :cond_0
    :try_start_1
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-void

    :cond_1
    :try_start_2
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v5, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v9, 0x0

    .local v9, "target":Landroid/view/View;
    if-eq v0, v12, :cond_3

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_2

    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    .local v7, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v7, :cond_5

    if-eq v10, v12, :cond_4

    invoke-virtual {v7, v10, v1, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    :goto_2
    :try_start_3
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v11

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_1

    .restart local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    const/4 v11, -0x1

    invoke-virtual {v7, v11, v1, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v8

    goto :goto_2

    :cond_5
    if-ne v10, v12, :cond_2

    invoke-virtual {v9, v1, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    goto :goto_2

    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v9    # "target":Landroid/view/View;
    :catchall_0
    move-exception v11

    :try_start_5
    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    throw v11

    :catch_1
    move-exception v12

    goto :goto_3

    :catch_2
    move-exception v11

    goto :goto_0
.end method

.method private shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1
    .param p1, "appScale"    # F
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput p6, v1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p7, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p8, v2

    if-nez v2, :cond_0

    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v3, Landroid/os/Message;->what:I

    iput p7, v3, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v4

    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v4, :cond_0

    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v4, p9, v4

    if-nez v4, :cond_0

    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    iput p7, v3, Landroid/os/Message;->arg1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v4, :cond_0

    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v4, p9, v4

    if-nez v4, :cond_0

    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x5

    iput v4, v3, Landroid/os/Message;->what:I

    iput p7, v3, Landroid/os/Message;->arg1:I

    iput p3, v3, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v4

    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v4, :cond_0

    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v4, p9, v4

    if-nez v4, :cond_0

    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x6

    iput v4, v3, Landroid/os/Message;->what:I

    iput p7, v3, Landroid/os/Message;->arg1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v4, :cond_0

    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v4, p9, v4

    if-nez v4, :cond_0

    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getFragmentBoundsOnTopActivityByAccessibilityIdClientThread(ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 4
    .param p1, "interactionId"    # I
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interrogatingPid"    # I
    .param p4, "interrogatingTid"    # J

    .prologue
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p3, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    invoke-static {p4, p5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getFragmentBoundsOnTopActivityByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    .local v4, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getTopActivityInstance()Landroid/app/Activity;

    move-result-object v5

    .local v5, "topActivityObj":Landroid/app/Activity;
    const/4 v3, 0x0

    .local v3, "rect":[Landroid/graphics/Rect;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .local v2, "interactionId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v5}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentBoundsOnTopActivity()[Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :cond_0
    :try_start_1
    invoke-interface {v1, v3, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFragmentBoundsOnTopActivityResult([Landroid/graphics/Rect;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v6

    :try_start_2
    invoke-interface {v1, v3, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFragmentBoundsOnTopActivityResult([Landroid/graphics/Rect;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v6

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public isTopActivityCoveredByAccessibilityIdClientThread(ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 4
    .param p1, "interactionId"    # I
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interrogatingPid"    # I
    .param p4, "interrogatingTid"    # J

    .prologue
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p3, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    invoke-static {p4, p5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public isTopActivityCoveredByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    .local v4, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getTopActivityInstance()Landroid/app/Activity;

    move-result-object v5

    .local v5, "topActivity":Landroid/app/Activity;
    const/4 v3, 0x1

    .local v3, "isCovered":Z
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .local v2, "interactionId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v5}, Landroid/app/Activity;->hasWindowFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    :cond_0
    :try_start_1
    invoke-interface {v1, v3, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setIsTopActivityCoveredResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v6

    :try_start_2
    invoke-interface {v1, v3, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setIsTopActivityCoveredResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v6

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 5
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .prologue
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput p7, v1, Landroid/os/Message;->arg1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p9, v2

    if-nez v2, :cond_0

    invoke-static {p9, p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
