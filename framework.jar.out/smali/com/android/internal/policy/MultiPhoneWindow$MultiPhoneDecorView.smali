.class Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
.super Lcom/android/internal/policy/PhoneWindow$DecorView;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiPhoneDecorView"
.end annotation


# instance fields
.field mConsumeHoverEvent:Z

.field mFixedRatio:F

.field mGuideViewBound:Landroid/graphics/Rect;

.field mIsResize:Z

.field mLastCorner:Z

.field mLastHoverEdge:Z

.field mLastMoveX:I

.field mLastMoveY:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mScreenHeight:I

.field mScreenWidth:I

.field mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

.field final synthetic this$0:Lcom/android/internal/policy/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/content/Context;I)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 319
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    .line 307
    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    .line 308
    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 310
    new-instance v0, Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/policy/multiwindow/EdgeInspector;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    .line 311
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    .line 312
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    .line 313
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    .line 314
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    .line 315
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    .line 316
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    .line 317
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    .line 321
    return-void
.end method

.method private resizeKnoxBadge(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 791
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    invoke-static {}, Landroid/os/PersonaManager;->isKnoxMultiwindowsSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 797
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 798
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-super {p0, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$402(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 801
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 803
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v1, v3, v4

    .line 804
    .local v1, "resizedHeight":F
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v2, v3, v4

    .line 806
    .local v2, "resizedWidth":F
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v4

    float-to-double v6, v2

    add-double/2addr v6, v8

    double-to-int v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v5

    float-to-double v6, v1

    add-double/2addr v6, v8

    double-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 807
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 809
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "resizedHeight":F
    .end local v2    # "resizedWidth":F
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 811
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 812
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_5

    .line 813
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-super {p0, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$402(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 815
    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method


# virtual methods
.method adjustPenWindowSize(Landroid/graphics/Rect;F)V
    .locals 9
    .param p1, "curBound"    # Landroid/graphics/Rect;
    .param p2, "ratio"    # F

    .prologue
    .line 626
    const/4 v3, 0x0

    .line 627
    .local v3, "UNDER_MIN_WIDTH":I
    const/4 v1, 0x1

    .line 628
    .local v1, "EXCEED_MAX_WIDTH":I
    const/4 v2, 0x2

    .line 629
    .local v2, "UNDER_MIN_HEIGHT":I
    const/4 v0, 0x3

    .line 630
    .local v0, "EXCEED_MAX_HEIGHT":I
    const/4 v6, -0x1

    .line 631
    .local v6, "what":I
    const/4 v4, 0x1

    .line 632
    .local v4, "lastStackBoundIsMax":Z
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-ne v7, v8, :cond_1

    .line 634
    :cond_0
    const/4 v4, 0x0

    .line 638
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-ge v7, v8, :cond_8

    .line 639
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 640
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 644
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .line 654
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ge v7, v8, :cond_c

    .line 655
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 656
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 660
    :cond_4
    :goto_2
    const/4 v6, 0x2

    .line 670
    :cond_5
    :goto_3
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-eqz v7, :cond_6

    .line 671
    packed-switch v6, :pswitch_data_0

    .line 694
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v7, :cond_6

    .line 695
    const/4 v5, 0x0

    .line 696
    .local v5, "margin":I
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v7

    div-int/lit8 v5, v7, 0x2

    .line 697
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v7, v8, :cond_6

    .line 698
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v7, v5

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 699
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 700
    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 707
    .end local v5    # "margin":I
    :cond_6
    :goto_5
    return-void

    .line 641
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 642
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 645
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-le v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    if-nez v4, :cond_3

    .line 646
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 647
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 651
    :cond_9
    :goto_6
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 648
    :cond_a
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 649
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 657
    :cond_b
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 658
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 661
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    if-nez v4, :cond_5

    .line 662
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 663
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 667
    :cond_d
    :goto_7
    const/4 v6, 0x3

    goto/16 :goto_3

    .line 664
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 665
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    .line 674
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 675
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    .line 677
    :cond_f
    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 683
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 684
    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4

    .line 686
    :cond_10
    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 702
    .restart local v5    # "margin":I
    :cond_11
    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5

    .line 671
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
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 729
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->drawBorder(Landroid/graphics/Canvas;)V

    .line 731
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->resizeKnoxBadge(Landroid/graphics/Canvas;)V

    .line 732
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    .line 824
    .local v7, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    const/4 v5, 0x1

    .line 826
    .local v5, "isMouse":Z
    :goto_0
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 827
    :cond_0
    if-eqz v5, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    const/16 v9, 0x65

    if-eq v8, v9, :cond_1

    .line 829
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/16 v9, 0x65

    iput v9, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    .line 830
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    const/4 v9, -0x1

    invoke-static {v8, v9}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 934
    :goto_2
    return v8

    .line 824
    .end local v5    # "isMouse":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 831
    .restart local v5    # "isMouse":Z
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "MultiPhoneWindow"

    const-string v9, "Failed to change Pen Point to MOUSEICON_DEFAULT"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 838
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v9, v9, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 839
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_2

    .line 842
    :cond_4
    const/4 v1, -0x1

    .line 843
    .local v1, "hoverIcon":I
    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    .line 845
    .local v4, "isFixedSize":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_1d

    .line 847
    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    .line 848
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    .line 849
    .local v6, "stackBounds":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_6

    .line 867
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 869
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v3

    .line 870
    .local v3, "isEdge":Z
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v2

    .line 872
    .local v2, "isCorner":Z
    if-nez v4, :cond_12

    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    if-eq v8, v3, :cond_12

    if-nez v2, :cond_12

    .line 873
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    .line 874
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v8, :cond_c

    .line 875
    if-nez v5, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    const/4 v9, 0x6

    if-lt v8, v9, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    const/16 v9, 0x9

    if-gt v8, v9, :cond_8

    .line 877
    :cond_7
    if-eqz v5, :cond_b

    const/16 v1, 0x65

    .line 879
    :cond_8
    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    .line 888
    :goto_4
    iput-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    .line 889
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    .line 919
    .end local v2    # "isCorner":Z
    .end local v3    # "isEdge":Z
    .end local v6    # "stackBounds":Landroid/graphics/Rect;
    :cond_9
    :goto_5
    if-lez v1, :cond_a

    .line 920
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput v1, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    .line 921
    if-eqz v5, :cond_1f

    .line 922
    const/4 v8, -0x1

    invoke-static {v1, v8}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 931
    :cond_a
    :goto_6
    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    if-eqz v8, :cond_20

    .line 932
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 877
    .restart local v2    # "isCorner":Z
    .restart local v3    # "isEdge":Z
    .restart local v6    # "stackBounds":Landroid/graphics/Rect;
    :cond_b
    const/4 v1, 0x1

    goto :goto_3

    .line 880
    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 881
    if-eqz v5, :cond_d

    const/16 v1, 0x6b

    :goto_7
    goto :goto_4

    :cond_d
    const/4 v1, 0x7

    goto :goto_7

    .line 882
    :cond_e
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 883
    if-eqz v5, :cond_f

    const/16 v1, 0x6a

    :goto_8
    goto :goto_4

    :cond_f
    const/4 v1, 0x6

    goto :goto_8

    .line 885
    :cond_10
    if-eqz v5, :cond_11

    const/16 v1, 0x65

    .line 886
    :goto_9
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    goto :goto_4

    .line 885
    :cond_11
    const/4 v1, 0x1

    goto :goto_9

    .line 890
    :cond_12
    if-nez v4, :cond_9

    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    if-eq v8, v2, :cond_9

    .line 891
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    .line 892
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->isInputMethodShown()Z

    move-result v8

    if-nez v8, :cond_17

    .line 893
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 894
    if-eqz v5, :cond_14

    const/16 v1, 0x6d

    .line 908
    :cond_13
    :goto_a
    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    .line 909
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    goto :goto_5

    .line 894
    :cond_14
    const/16 v1, 0x9

    goto :goto_a

    .line 895
    :cond_15
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 896
    if-eqz v5, :cond_16

    const/16 v1, 0x6c

    :goto_b
    goto :goto_a

    :cond_16
    const/16 v1, 0x8

    goto :goto_b

    .line 898
    :cond_17
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->isInputMethodShown()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 899
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 900
    if-eqz v5, :cond_18

    const/16 v1, 0x6c

    :goto_c
    goto :goto_a

    :cond_18
    const/16 v1, 0x8

    goto :goto_c

    .line 901
    :cond_19
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 902
    if-eqz v5, :cond_1a

    const/16 v1, 0x6d

    :goto_d
    goto :goto_a

    :cond_1a
    const/16 v1, 0x9

    goto :goto_d

    .line 905
    :cond_1b
    if-eqz v5, :cond_1c

    const/16 v1, 0x65

    .line 906
    :goto_e
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    goto :goto_a

    .line 905
    :cond_1c
    const/4 v1, 0x1

    goto :goto_e

    .line 911
    .end local v2    # "isCorner":Z
    .end local v3    # "isEdge":Z
    .end local v6    # "stackBounds":Landroid/graphics/Rect;
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_9

    .line 912
    if-eqz v5, :cond_1e

    const/16 v1, 0x65

    .line 913
    :goto_f
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    .line 914
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    .line 915
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    goto/16 :goto_5

    .line 912
    :cond_1e
    const/4 v1, 0x1

    goto :goto_f

    .line 924
    :cond_1f
    const/4 v8, -0x1

    :try_start_2
    invoke-static {v1, v8}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 927
    :catch_1
    move-exception v0

    .line 928
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v8, "MultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to change Pen Point to HOVERING / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 934
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_2
.end method

.method protected dispatchMultiWindowStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1061
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchMultiWindowStateChanged(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMultiWindowStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;->onStateChanged(I)V

    .line 1070
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 326
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 327
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    .line 328
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 485
    :cond_1
    :goto_0
    return v5

    .line 331
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v6, v7

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 334
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    .line 335
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 338
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 485
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 340
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    .line 341
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v5, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    .line 343
    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    .line 344
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    .line 359
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 360
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 369
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 373
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 376
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    if-nez v6, :cond_5

    .line 380
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 383
    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 384
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 385
    iput-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 387
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 388
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 390
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 391
    .local v4, "tempStackBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6, v4, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    .line 393
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v6, :cond_1

    .line 396
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 397
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v6, :cond_1

    .line 398
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    goto/16 :goto_0

    .line 407
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v4    # "tempStackBound":Landroid/graphics/Rect;
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 409
    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-nez v6, :cond_a

    const v6, 0x8000

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    move v0, v5

    .line 412
    .local v0, "fixedRatio":Z
    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    if-nez v6, :cond_1

    .line 413
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_0

    .line 416
    .end local v0    # "fixedRatio":Z
    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCandidate()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 419
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 420
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-nez v6, :cond_e

    :cond_d
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 421
    :cond_e
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v6, :cond_f

    .line 422
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 424
    :cond_f
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 425
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 427
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 428
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 430
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 431
    .restart local v4    # "tempStackBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6, v4, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    .line 433
    iput-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 434
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_1

    .line 442
    .end local v4    # "tempStackBound":Landroid/graphics/Rect;
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v0, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    .line 443
    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 444
    iput v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 446
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    .line 448
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    if-eqz v6, :cond_5

    .line 449
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 450
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 453
    :cond_10
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-le v6, v7, :cond_11

    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-gtz v6, :cond_13

    :cond_11
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v6, v7, :cond_12

    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-gtz v6, :cond_13

    :cond_12
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->isExceededLimitTop(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 456
    :cond_13
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    goto/16 :goto_0

    .line 459
    :cond_14
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 460
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 461
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 462
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 463
    sget-boolean v6, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v6, :cond_15

    const-string v6, "MultiPhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "change guideview bounds before set, old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", new="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_15
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 467
    :cond_16
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 468
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsShowing:Z

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v6, :cond_17

    .line 470
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    .line 471
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->updatePosition()V

    .line 474
    :cond_17
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 475
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 476
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_0

    .line 479
    :cond_18
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    goto/16 :goto_1

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 736
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->draw(Landroid/graphics/Canvas;)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 741
    :cond_1
    return-void
.end method

.method drawBorder(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 744
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z
    invoke-static {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 745
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 746
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v6, :cond_2

    .line 749
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->access$202(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 787
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 766
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/internal/policy/multiwindow/Border;->drawFocusBorder(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 767
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 768
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 769
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v5, :cond_4

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v5, :cond_1

    .line 774
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v2

    .line 775
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v1

    .line 776
    .local v1, "bottom":I
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v4, v1, :cond_6

    .line 777
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v3

    .line 778
    .local v3, "stackBound":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v4, v2, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lt v4, v1, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I
    invoke-static {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I
    invoke-static {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_1

    .line 785
    .end local v3    # "stackBound":Landroid/graphics/Rect;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-virtual {v4, p1, v2, v1, v5}, Lcom/android/internal/policy/multiwindow/Border;->drawUnfocusBorder(Landroid/graphics/Canvas;III)V

    goto/16 :goto_0
.end method

.method isExceededLimitTop(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "guideViewBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 489
    if-eqz p1, :cond_1

    .line 490
    const/4 v0, -0x1

    .line 491
    .local v0, "limitTop":I
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 494
    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    if-le v0, v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v0, :cond_1

    .line 497
    const/4 v1, 0x1

    .line 500
    .end local v0    # "limitTop":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 939
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onAttachedToWindow()V

    .line 940
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    const-string/jumbo v3, "onAttachedToWindow"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->hackTurnOffWindowResizeAnim(Z)V

    .line 945
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->register()V

    .line 947
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 948
    .local v0, "dragModeReceiver":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 949
    const-string v1, "com.sec.android.action.NOTIFY_START_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 951
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    .line 956
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2

    .line 962
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    new-instance v3, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {v3, v4}, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v3, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 963
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 966
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v2, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    .line 967
    return-void

    .line 951
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v3, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    .line 989
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetachedFromWindow, mActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->unregister()V

    .line 991
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    .line 992
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 995
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 998
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 999
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$702(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 1002
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1003
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1004
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-object v4, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1007
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v0, :cond_4

    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow(Z)V

    .line 1010
    :cond_4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 710
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onWindowFocusChanged(Z)V

    .line 711
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 716
    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 720
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onWindowVisibilityChanged(I)V

    .line 721
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 725
    :cond_0
    return-void
.end method

.method resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 12
    .param p1, "isFixedRatio"    # Z
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 504
    const/high16 v6, 0x10000

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 505
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    .line 623
    :goto_0
    return-void

    .line 509
    :cond_0
    const/16 v6, 0x800

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 514
    :cond_1
    const/4 v3, 0x0

    .line 515
    .local v3, "resizable":Z
    if-eqz p1, :cond_f

    .line 516
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-lt v6, v7, :cond_2

    .line 517
    const/4 v3, 0x1

    .line 524
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 525
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .line 526
    .local v0, "dx":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    if-le v6, v7, :cond_4

    .line 527
    if-nez v3, :cond_3

    if-eqz p1, :cond_4

    if-gez v0, :cond_4

    .line 528
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 529
    const/4 v3, 0x1

    .line 545
    .end local v0    # "dx":I
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 546
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 547
    .local v1, "dy":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    if-le v6, v7, :cond_7

    .line 548
    if-nez v3, :cond_5

    if-eqz p1, :cond_7

    if-lez v1, :cond_7

    .line 549
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 550
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-gt v6, v7, :cond_6

    .line 551
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 553
    :cond_6
    const/4 v3, 0x1

    .line 557
    .end local v1    # "dy":I
    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    .line 560
    if-eqz p1, :cond_c

    if-eqz v3, :cond_c

    .line 561
    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 562
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 564
    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 565
    .local v5, "width":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 567
    .local v2, "height":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 568
    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 569
    int-to-float v6, v5

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 570
    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ge v2, v6, :cond_a

    .line 571
    iget v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    .line 573
    :cond_a
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 574
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 589
    :cond_b
    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    .line 592
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 593
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 594
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 596
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 599
    if-eqz p1, :cond_e

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-eq v6, v7, :cond_d

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v6, v7, :cond_e

    .line 601
    :cond_d
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v6, v7, :cond_16

    .line 602
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 609
    :cond_e
    :goto_4
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 611
    .local v4, "tempGuideBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->isExceededLimitTop(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 612
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    iget v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    .line 622
    :goto_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    goto/16 :goto_0

    .line 520
    .end local v4    # "tempGuideBound":Landroid/graphics/Rect;
    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 532
    :cond_10
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 533
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v0, v6, v7

    .line 534
    .restart local v0    # "dx":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    if-le v6, v7, :cond_4

    .line 535
    if-nez v3, :cond_11

    if-eqz p1, :cond_4

    if-lez v0, :cond_4

    .line 536
    :cond_11
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 537
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v6, v7, :cond_12

    .line 538
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 540
    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 576
    .end local v0    # "dx":I
    .restart local v2    # "height":I
    .restart local v5    # "width":I
    :cond_13
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 579
    :cond_14
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 580
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3

    .line 582
    :cond_15
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 583
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v6, v7, :cond_b

    .line 584
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    .line 604
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_16
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 613
    .restart local v4    # "tempGuideBound":Landroid/graphics/Rect;
    :cond_17
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v6, v7, :cond_18

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-gt v6, v7, :cond_18

    .line 614
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    .line 615
    :cond_18
    if-eqz p1, :cond_1a

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-eq v6, v7, :cond_19

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ne v6, v7, :cond_1a

    .line 616
    :cond_19
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    .line 617
    :cond_1a
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-gt v6, v7, :cond_1b

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v6, v7, :cond_1c

    .line 618
    :cond_1b
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    iget v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    .line 620
    :cond_1c
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_5
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 977
    :goto_0
    return-void

    .line 976
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public superDispatchHoverEventMW(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 984
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEventMW(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 980
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 1018
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    .line 1037
    :goto_0
    return-void

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    .line 1025
    .local v8, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getAppVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    .end local v8    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1031
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1032
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    :cond_2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-super/range {v0 .. v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    goto :goto_0
.end method

.method protected updateMultiPhoneWindowLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1040
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    .line 1047
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    .line 1051
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    .line 1053
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1054
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    .line 1055
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    .line 1057
    :cond_3
    return-void
.end method
