.class Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;
.super Ljava/lang/Object;
.source "SubPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/SubPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResizeHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResizeHelper"


# instance fields
.field private final DEBUG:Z

.field private mBeginX:I

.field private mBeginY:I

.field private mContentsBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mFixedRatio:F

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHoverIcon:I

.field private mListener:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mMoving:Z

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mResizablePadding:Landroid/graphics/Rect;

.field private mResizeBounds:Landroid/graphics/Rect;

.field private mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;IIII)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentsBoudns"    # Landroid/graphics/Rect;
    .param p3, "resizeBounds"    # Landroid/graphics/Rect;
    .param p4, "paddingRect"    # Landroid/graphics/Rect;
    .param p5, "l"    # Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;
    .param p6, "minWidth"    # I
    .param p7, "minHeight"    # I
    .param p8, "maxWidth"    # I
    .param p9, "maxHeight"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->DEBUG:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mResizeBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mPaddingRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mResizablePadding:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/multiwindow/EdgeInspector;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMoving:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    iput-object p1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mListener:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    .local v8, "resizableSize":I
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    return-void
.end method

.method private initGuideView()V
    .locals 6

    .prologue
    new-instance v0, Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x8d4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    iput-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    return-void
.end method

.method private isInputMethodShown()Z
    .locals 2

    .prologue
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isResizeIcon(Z)Z
    .locals 3
    .param p1, "isMouse"    # Z

    .prologue
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public begin(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mResizeBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginY:I

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginX:I

    iget v2, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMoving:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMoving:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizeHelper"

    const-string v1, "Start to resize."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->initGuideView()V

    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMoving:Z

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->setFilter(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->setFilter(I)V

    goto :goto_0

    :cond_0
    const-string v0, "ResizeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resizing is failed. mResizeBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mResizablePadding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBeginX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBeginY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispathcHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    move v2, v3

    .local v2, "isMouse":Z
    :cond_0
    const/4 v1, 0x0

    .local v1, "isConsume":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_2

    :try_start_0
    iget v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    if-lez v3, :cond_2

    if-eqz v2, :cond_d

    iget v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return v1

    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mResizeBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    packed-switch v6, :pswitch_data_1

    :goto_2
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->isInputMethodShown()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    const/16 v3, 0x6d

    :goto_3
    iput v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->setFilter(I)V

    goto :goto_2

    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->setFilter(I)V

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    const/16 v3, 0x6c

    :goto_4
    iput v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v2, :cond_7

    const/16 v5, 0x6c

    :cond_7
    iput v5, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_9

    const/16 v4, 0x6d

    :cond_9
    iput v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v2}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->isResizeIcon(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_b

    const/16 v3, 0x65

    :cond_b
    iput v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, v2}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->isResizeIcon(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_c

    const/16 v3, 0x65

    :cond_c
    iput v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_d
    :try_start_1
    iget v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mHoverIcon:I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ResizeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to change Pen Point to HOVERING / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public finish(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMoving:Z

    if-nez v0, :cond_1

    iput-object v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_2

    const-string v0, "ResizeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish resizing. The bounds is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mListener:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;

    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;->onResizeFinish(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMoving:Z

    return v0
.end method

.method public move(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMoving:Z

    if-nez v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCandidate()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginY:I

    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginX:I

    iget v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginY:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMoving:Z

    if-eqz v5, :cond_0

    const-string v5, "TAG"

    const-string v6, "Start to resize."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->initGuideView()V

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v0, 0x0

    .local v0, "dx":I
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    sub-int v0, v6, v7

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v0

    .local v3, "width":I
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMaxWidth:I

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMaxHeight:I

    if-ne v6, v7, :cond_9

    :cond_3
    move v2, v5

    .local v2, "lastBoundIsMax":Z
    :goto_2
    int-to-float v6, v3

    iget v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mFixedRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .local v1, "height":I
    iget v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMinWidth:I

    if-ge v3, v6, :cond_a

    iget v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMinWidth:I

    int-to-float v6, v3

    iget v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mFixedRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v6, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    :goto_3
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->appWidth:I

    if-eq v3, v6, :cond_4

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v1, v6, :cond_d

    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v6, v4, v4, v3, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    :cond_5
    :goto_4
    move v4, v5

    goto :goto_0

    .end local v1    # "height":I
    .end local v2    # "lastBoundIsMax":Z
    .end local v3    # "width":I
    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v10}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginX:I

    sub-int v0, v6, v7

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    sub-int v0, v6, v7

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mBeginX:I

    sub-int v0, v6, v7

    goto/16 :goto_1

    .restart local v3    # "width":I
    :cond_9
    move v2, v4

    goto :goto_2

    .restart local v1    # "height":I
    .restart local v2    # "lastBoundIsMax":Z
    :cond_a
    iget v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMaxWidth:I

    if-le v3, v6, :cond_c

    if-eqz v2, :cond_b

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    iget v3, v6, Landroid/view/DisplayInfo;->appWidth:I

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    iget v1, v6, Landroid/view/DisplayInfo;->appHeight:I

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    goto :goto_3

    :cond_b
    iget v3, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMaxWidth:I

    int-to-float v6, v3

    iget v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mFixedRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto/16 :goto_3

    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v6, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    goto/16 :goto_3

    :cond_d
    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v4, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {v4, v6, v7, v3, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto/16 :goto_4

    :cond_e
    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v4, v10}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {v4, v6, v7, v3, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto/16 :goto_4

    :cond_f
    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v4, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v7, v3, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto/16 :goto_4

    :cond_10
    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v7, v3, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto/16 :goto_4
.end method

.method public set(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V
    .locals 3
    .param p1, "contentsBoudns"    # Landroid/graphics/Rect;
    .param p2, "resizeBounds"    # Landroid/graphics/Rect;
    .param p3, "paddingRect"    # Landroid/graphics/Rect;
    .param p4, "minWidth"    # I
    .param p5, "minHeight"    # I
    .param p6, "maxWidth"    # I
    .param p7, "maxHeight"    # I

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "ResizeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The parameter is null.resizeBounds ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",contentsBoudns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter was wrong."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "ResizeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeBounds ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",contentsBoudns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    iput p4, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMinWidth:I

    iput p5, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMinHeight:I

    iput p6, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMaxWidth:I

    iput p7, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mMaxHeight:I

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mFixedRatio:F

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method
