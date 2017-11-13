.class public Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;
.super Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
.source "DesktopMultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DesktopMultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DesktopMultiDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method adjustPenWindowSize(Landroid/graphics/Rect;F)V
    .locals 13
    .param p1, "curBound"    # Landroid/graphics/Rect;
    .param p2, "ratio"    # F

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x4

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    .local v3, "UNDER_MIN_WIDTH":I
    const/4 v1, 0x1

    .local v1, "EXCEED_MAX_WIDTH":I
    const/4 v2, 0x2

    .local v2, "UNDER_MIN_HEIGHT":I
    const/4 v0, 0x3

    .local v0, "EXCEED_MAX_HEIGHT":I
    const/4 v5, -0x1

    .local v5, "what":I
    const/4 v4, 0x1

    .local v4, "lastStackBoundIsMax":Z
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxWidth:I

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxHeight:I

    if-ne v6, v7, :cond_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinWidth:I

    if-ge v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinWidth:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    :cond_4
    :goto_1
    const/4 v5, 0x0

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinHeight:I

    if-ge v6, v7, :cond_d

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_c

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinHeight:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->top:I

    :cond_6
    :goto_3
    const/4 v5, 0x2

    :cond_7
    :goto_4
    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-eqz v6, :cond_0

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_10

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v12}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinWidth:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxWidth:I

    if-le v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxSizeRatio:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_5

    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxWidth:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    :cond_a
    :goto_5
    const/4 v5, 0x1

    goto :goto_2

    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v12}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxWidth:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v11}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinHeight:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxHeight:I

    if-le v6, v7, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxSizeRatio:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_7

    if-nez v4, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_f

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxHeight:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->top:I

    :cond_e
    :goto_6
    const/4 v5, 0x3

    goto/16 :goto_4

    :cond_f
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v11}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_e

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxHeight:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_10
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_11

    iget v6, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p2

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    :cond_11
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p2

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->drawDesktopWindowHeader(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->drawDesktopWindowHeader(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->drawDesktopWindowHeader(Z)V

    goto :goto_0
.end method

.method public bridge synthetic dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-super/range {p0 .. p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    :goto_0
    return v14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    .local v12, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_1

    const/4 v8, 0x1

    .local v8, "isMouse":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v5

    .local v5, "isDesktopMode":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v9

    .local v9, "isNormal":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v10

    .local v10, "isSplit":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    .local v3, "isCascade":Z
    if-nez v8, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->superDispatchHoverEventMW(Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_0

    .end local v3    # "isCascade":Z
    .end local v5    # "isDesktopMode":Z
    .end local v8    # "isMouse":Z
    .end local v9    # "isNormal":Z
    .end local v10    # "isSplit":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .restart local v3    # "isCascade":Z
    .restart local v5    # "isDesktopMode":Z
    .restart local v8    # "isMouse":Z
    .restart local v9    # "isNormal":Z
    .restart local v10    # "isSplit":Z
    :cond_2
    if-eqz v5, :cond_4

    if-eqz v8, :cond_4

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopViewBlocked:Z
    invoke-static {v14}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->access$200(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v15, v15, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v15}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v15

    int-to-float v15, v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    const/4 v13, 0x0

    .local v13, "visible":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeaderView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->bringToFront()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v14, v13}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    .end local v13    # "visible":I
    :cond_3
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    :cond_4
    if-eqz v3, :cond_5

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastHoverIcon:I

    const/16 v15, 0x79

    if-eq v14, v15, :cond_6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    const/16 v15, 0x79

    iput v15, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastHoverIcon:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastHoverIcon:I

    const/4 v15, -0x1

    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->superDispatchHoverEventMW(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_0

    :cond_7
    const/16 v13, 0x8

    goto :goto_2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v14, "DesktopMultiPhoneWindow"

    const-string v15, "Failed to change Pen Point to MOUSEICON_DEFAULT"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v15, v15, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTitleBarHeight:I

    int-to-float v15, v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->superDispatchHoverEventMW(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_0

    :cond_9
    const/4 v2, -0x1

    .local v2, "hoverIcon":I
    const/high16 v14, 0x10000

    invoke-virtual {v12, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    .local v7, "isFixedSize":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x7

    if-eq v14, v15, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/16 v15, 0x9

    if-ne v14, v15, :cond_19

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v14}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBoundForDesktopMode()Landroid/graphics/Rect;

    move-result-object v11

    .local v11, "stackBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDssScale:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDssScale:F

    invoke-virtual {v11, v14}, Landroid/graphics/Rect;->scale(F)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->access$100(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14, v11, v15}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v14}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    .local v6, "isEdge":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v14}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v4

    .local v4, "isCorner":Z
    if-nez v7, :cond_13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastHoverEdge:Z

    if-eq v14, v6, :cond_13

    if-nez v4, :cond_13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mConsumeHoverEvent:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v14, :cond_10

    if-nez v8, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastHoverIcon:I

    const/16 v15, 0x7a

    if-lt v14, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastHoverIcon:I

    const/16 v15, 0x7d

    if-gt v14, v15, :cond_d

    :cond_c
    const/16 v2, 0x79

    :cond_d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mConsumeHoverEvent:Z

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastHoverEdge:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastCorner:Z

    .end local v4    # "isCorner":Z
    .end local v6    # "isEdge":Z
    .end local v11    # "stackBounds":Landroid/graphics/Rect;
    :cond_e
    :goto_5
    if-lez v2, :cond_f

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iput v2, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastHoverIcon:I

    const/4 v14, -0x1

    invoke-static {v2, v14}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mConsumeHoverEvent:Z

    if-eqz v14, :cond_1a

    const/4 v14, 0x1

    goto/16 :goto_0

    .restart local v4    # "isCorner":Z
    .restart local v6    # "isEdge":Z
    .restart local v11    # "stackBounds":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v14

    if-eqz v14, :cond_11

    const/16 v2, 0x7b

    goto :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v14

    if-eqz v14, :cond_12

    const/16 v2, 0x7a

    goto :goto_4

    :cond_12
    const/16 v2, 0x79

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mConsumeHoverEvent:Z

    goto :goto_4

    :cond_13
    if-nez v7, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastCorner:Z

    if-eq v14, v4, :cond_e

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mConsumeHoverEvent:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v14

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isInputMethodShown()Z

    move-result v14

    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v14

    if-eqz v14, :cond_15

    const/16 v2, 0x7d

    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastCorner:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastHoverEdge:Z

    goto :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v14

    if-eqz v14, :cond_14

    const/16 v2, 0x7c

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v14, v14, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isInputMethodShown()Z

    move-result v14

    if-nez v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v14

    if-eqz v14, :cond_17

    const/16 v2, 0x7c

    goto :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v14

    if-eqz v14, :cond_14

    const/16 v2, 0x7d

    goto :goto_7

    :cond_18
    const/16 v2, 0x79

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mConsumeHoverEvent:Z

    goto :goto_7

    .end local v4    # "isCorner":Z
    .end local v6    # "isEdge":Z
    .end local v11    # "stackBounds":Landroid/graphics/Rect;
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_e

    const/16 v2, 0x79

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mConsumeHoverEvent:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastHoverEdge:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastCorner:Z

    goto/16 :goto_5

    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v14, "DesktopMultiPhoneWindow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to change Pen Point to HOVERING / "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->superDispatchHoverEventMW(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_0
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sentFromHeaderView"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopTouchBlocked:Z
    invoke-static {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->access$000(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->superDispatchTouchEventMW(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->dismissGuide()V

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->superDispatchTouchEventMW(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDssScale:F

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTitleBarHeight:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDssScale:F

    div-float/2addr v6, v7

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mIsResize:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->access$100(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->superDispatchTouchEventMW(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_6
    :goto_1
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->superDispatchTouchEventMW(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v6, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->isRotatingCascade(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-boolean v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "DesktopMultiPhoneWindow"

    const-string v6, "isRotatingCascade true, call superDispatchTouchEvent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->superDispatchTouchEventMW(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iput-boolean v5, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsPenButtonPressed:Z

    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->initStackBound()V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBoundForDesktopMode()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->access$100(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveY:I

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveX:I

    iget v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsPenButtonPressed:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_a
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->forceHideInputMethod()Z

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mIsResize:Z

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBoundForDesktopMode()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v4, "tempStackBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6, v4, v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v6, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->setWindowHeaderAlpha(F)V

    goto/16 :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v4    # "tempStackBound":Landroid/graphics/Rect;
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-nez v6, :cond_d

    const v6, 0x8000

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    move v0, v5

    .local v0, "fixedRatio":Z
    :cond_e
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsPenButtonPressed:Z

    if-nez v6, :cond_0

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_0

    .end local v0    # "fixedRatio":Z
    :cond_f
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCandidate()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveY:I

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveX:I

    iget v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-nez v6, :cond_11

    :cond_10
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_11
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->forceHideInputMethod()Z

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBoundForDesktopMode()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v4    # "tempStackBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6, v4, v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    iput-boolean v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mIsResize:Z

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_1

    .end local v4    # "tempStackBound":Landroid/graphics/Rect;
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iput-boolean v0, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsPenButtonPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mIsResize:Z

    iput v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mFixedRatio:F

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->dismissGuide()V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_12
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxWidth:I

    if-le v6, v7, :cond_13

    iget v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxWidth:I

    if-gtz v6, :cond_15

    :cond_13
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxHeight:I

    if-le v6, v7, :cond_14

    iget v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxHeight:I

    if-gtz v6, :cond_15

    :cond_14
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->isExceededLimitTop(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_15
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6, v5}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->requestState(I)V

    goto/16 :goto_0

    :cond_16
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    sget-boolean v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v6, :cond_17

    const-string v6, "DesktopMultiPhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "change guideview bounds before set, old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", new="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_18
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->setWindowHeaderAlpha(F)V

    :cond_19
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    :cond_1a
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_0

    :cond_1b
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawBorder(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/Border;->setDesktopMode(Z)V

    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->drawBorder(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic finishChanging()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->finishChanging()V

    return-void
.end method

.method isPenWindowResizing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mIsResize:Z

    return v0
.end method

.method public bridge synthetic isTransitionGroup()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->isTransitionGroup()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "x0"    # Landroid/view/WindowInsets;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->onCloseSystemDialogs(Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopViewBlocked:Z
    invoke-static {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->access$200(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->onDetachedFromWindow()V

    return-void
.end method

.method public bridge synthetic onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onRootViewScrollYChanged(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->onRootViewScrollYChanged(I)V

    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->drawDesktopWindowHeader(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->drawDesktopWindowHeader(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onWindowSystemUiVisibilityChanged(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->onWindowSystemUiVisibilityChanged(I)V

    return-void
.end method

.method resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 12
    .param p1, "isFixedRatio"    # Z
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :goto_0
    return-void

    :cond_0
    const/high16 v6, 0x10000

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    goto :goto_0

    :cond_1
    const/16 v6, 0x800

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_2
    const/4 v3, 0x0

    .local v3, "resizable":Z
    if-eqz p1, :cond_11

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinWidth:I

    if-lt v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinHeight:I

    if-lt v6, v7, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .local v0, "dx":I
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    if-le v6, v7, :cond_5

    if-nez v3, :cond_4

    if-eqz p1, :cond_5

    if-gez v0, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iput v7, v6, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    .end local v0    # "dx":I
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .local v1, "dy":I
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    if-le v6, v7, :cond_8

    if-nez v3, :cond_6

    if-eqz p1, :cond_8

    if-lez v1, :cond_8

    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinHeight:I

    if-gt v6, v7, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    :cond_7
    const/4 v3, 0x1

    .end local v1    # "dy":I
    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    if-eqz p1, :cond_d

    if-eqz v3, :cond_d

    iget v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mFixedRatio:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mFixedRatio:F

    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    .local v5, "width":I
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    .local v2, "height":I
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_a
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v6, v5

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mFixedRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinHeight:I

    if-ge v2, v6, :cond_b

    iget v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinHeight:I

    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    :cond_c
    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mFixedRatio:F

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveY:I

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveX:I

    iget v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mLastMoveY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_f

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-eq v6, v7, :cond_e

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v6, v7, :cond_f

    :cond_e
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v6, v7, :cond_18

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    :cond_f
    :goto_4
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v4, "tempGuideBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v6, :cond_10

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    :cond_10
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->isExceededLimitTop(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mScreenWidth:I

    iget v11, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mScreenHeight:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    :goto_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mIsResize:Z

    goto/16 :goto_0

    .end local v4    # "tempGuideBound":Landroid/graphics/Rect;
    :cond_11
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_12
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v0, v6, v7

    .restart local v0    # "dx":I
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    if-le v6, v7, :cond_5

    if-nez v3, :cond_13

    if-eqz p1, :cond_5

    if-lez v0, :cond_5

    :cond_13
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinWidth:I

    if-gt v6, v7, :cond_14

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_2

    .end local v0    # "dx":I
    .restart local v2    # "height":I
    .restart local v5    # "width":I
    :cond_15
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_16
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mFixedRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3

    :cond_17
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mFixedRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinWidth:I

    if-gt v6, v7, :cond_c

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_18
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .restart local v4    # "tempGuideBound":Landroid/graphics/Rect;
    :cond_19
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinWidth:I

    if-gt v6, v7, :cond_1a

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinHeight:I

    if-gt v6, v7, :cond_1a

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    :cond_1a
    if-eqz p1, :cond_1c

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinWidth:I

    if-eq v6, v7, :cond_1b

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMinHeight:I

    if-ne v6, v7, :cond_1c

    :cond_1b
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    :cond_1c
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxWidth:I

    if-gt v6, v7, :cond_1d

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mMaxHeight:I

    if-le v6, v7, :cond_1e

    :cond_1d
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mScreenWidth:I

    iget v11, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->mScreenHeight:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    :cond_1e
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    goto/16 :goto_5
.end method

.method public bridge synthetic sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public bridge synthetic setBackgroundColor(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->setBackgroundColor(I)V

    return-void
.end method

.method public bridge synthetic setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setBackgroundFallback(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->setBackgroundFallback(I)V

    return-void
.end method

.method public bridge synthetic setFloatingMenuEnabled(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->setFloatingMenuEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setSurfaceFormat(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->setSurfaceFormat(I)V

    return-void
.end method

.method public bridge synthetic setSurfaceKeepScreenOn(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->setSurfaceKeepScreenOn(Z)V

    return-void
.end method

.method public bridge synthetic setSurfaceType(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->setSurfaceType(I)V

    return-void
.end method

.method public bridge synthetic setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "x0"    # Landroid/view/ActionMode$Callback;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "x0"    # Landroid/view/ActionMode$Callback;
    .param p2, "x1"    # I

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/ActionMode$Callback;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/ActionMode$Callback;
    .param p3, "x2"    # I

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startChanging()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->startChanging()V

    return-void
.end method

.method public bridge synthetic superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic superDispatchHoverEventMW(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->superDispatchHoverEventMW(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic superDispatchTouchEventMW(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->superDispatchTouchEventMW(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V
    .locals 9
    .param p1, "state"    # Lcom/android/internal/policy/PhoneWindow$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "rightMargin"    # I
    .param p7, "animate"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-super/range {v0 .. v7}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    .local v8, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getAppVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .end local v8    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-super/range {v0 .. v7}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    return-void
.end method

.method public bridge synthetic willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    return-object v0
.end method
