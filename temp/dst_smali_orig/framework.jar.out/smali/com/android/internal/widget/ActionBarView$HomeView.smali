.class Lcom/android/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# static fields
.field private static final DEFAULT_TRANSITION_DURATION:J = 0x96L


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mHaveExtraPadding:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mStartOffset:I

.field private mUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .local v0, "t":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    :cond_0
    return-void
.end method

.method private updateUpIndicator()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method getShowIcon()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getShowUp()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartOffset()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    const v0, 0x1020047

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const v0, 0x102002c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    sub-int v25, p5, p3

    div-int/lit8 v23, v25, 0x2

    .local v23, "vCenter":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->isLayoutRtl()Z

    move-result v13

    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getWidth()I

    move-result v24

    .local v24, "width":I
    const/16 v19, 0x0

    .local v19, "upOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    .local v18, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v16

    .local v16, "upHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v22

    .local v22, "upWidth":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v25, v25, v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v19, v25, v26

    div-int/lit8 v25, v16, 0x2

    sub-int v21, v23, v25

    .local v21, "upTop":I
    add-int v15, v21, v16

    .local v15, "upBottom":I
    if-eqz v13, :cond_1

    move/from16 v20, v24

    .local v20, "upRight":I
    sub-int v17, v20, v22

    .local v17, "upLeft":I
    sub-int p4, p4, v19

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/widget/ImageView;->layout(IIII)V

    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .local v7, "iconHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .local v12, "iconWidth":I
    sub-int v25, p4, p2

    div-int/lit8 v5, v25, 0x2

    .local v5, "hCenter":I
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    div-int/lit8 v26, v7, 0x2

    sub-int v26, v23, v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v11

    .local v11, "iconTop":I
    add-int v6, v11, v7

    .local v6, "iconBottom":I
    invoke-virtual {v9}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v14

    .local v14, "marginStart":I
    div-int/lit8 v25, v12, 0x2

    sub-int v25, v5, v25

    move/from16 v0, v25

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "delta":I
    if-eqz v13, :cond_2

    sub-int v25, v24, v19

    sub-int v10, v25, v4

    .local v10, "iconRight":I
    sub-int v8, v10, v12

    .local v8, "iconLeft":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v11, v10, v6}, Landroid/widget/ImageView;->layout(IIII)V

    return-void

    .end local v4    # "delta":I
    .end local v5    # "hCenter":I
    .end local v6    # "iconBottom":I
    .end local v7    # "iconHeight":I
    .end local v8    # "iconLeft":I
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "iconRight":I
    .end local v11    # "iconTop":I
    .end local v12    # "iconWidth":I
    .end local v14    # "marginStart":I
    .restart local v15    # "upBottom":I
    .restart local v16    # "upHeight":I
    .restart local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v21    # "upTop":I
    .restart local v22    # "upWidth":I
    :cond_1
    move/from16 v20, v22

    .restart local v20    # "upRight":I
    const/16 v17, 0x0

    .restart local v17    # "upLeft":I
    add-int p2, p2, v19

    goto :goto_0

    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    .restart local v4    # "delta":I
    .restart local v5    # "hCenter":I
    .restart local v6    # "iconBottom":I
    .restart local v7    # "iconHeight":I
    .restart local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "iconTop":I
    .restart local v12    # "iconWidth":I
    .restart local v14    # "marginStart":I
    :cond_2
    add-int v8, v19, v4

    .restart local v8    # "iconLeft":I
    add-int v10, v8, v12

    .restart local v10    # "iconRight":I
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/4 v13, 0x1

    .local v13, "showUp":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/4 v12, 0x1

    .local v12, "showIcon":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mHaveExtraPadding:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x42900000    # 72.0f

    # getter for: Lcom/android/internal/widget/ActionBarView;->mDensity:F
    invoke-static {}, Lcom/android/internal/widget/ActionBarView;->access$500()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int v11, v1, v2

    .local v11, "padding":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .local v14, "temp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_4

    iput v11, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v11    # "padding":I
    .end local v14    # "temp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .local v15, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v16, v1, v2

    .local v16, "upMargins":I
    sget-boolean v1, Lcom/android/internal/widget/AbsActionBarView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_5

    if-nez v13, :cond_5

    # getter for: Lcom/android/internal/widget/ActionBarView;->mContentInsetStart:I
    invoke-static {}, Lcom/android/internal/widget/ActionBarView;->access$600()I

    move-result v1

    :goto_3
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    if-nez v13, :cond_6

    const/4 v4, 0x0

    .local v4, "width":I
    :goto_4
    iget v1, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v7, v1, v2

    .local v7, "height":I
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .local v10, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v4, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .end local v10    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .local v8, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .local v9, "heightSize":I
    sparse-switch v17, :sswitch_data_0

    :goto_6
    sparse-switch v8, :sswitch_data_1

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    return-void

    .end local v4    # "width":I
    .end local v7    # "height":I
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v12    # "showIcon":Z
    .end local v13    # "showUp":Z
    .end local v15    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "upMargins":I
    .end local v17    # "widthMode":I
    .end local v18    # "widthSize":I
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .restart local v13    # "showUp":Z
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    .restart local v11    # "padding":I
    .restart local v12    # "showIcon":Z
    .restart local v14    # "temp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iput v11, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    .end local v11    # "padding":I
    .end local v14    # "temp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "upMargins":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    goto :goto_4

    .restart local v4    # "width":I
    .restart local v7    # "height":I
    :cond_7
    if-gez v16, :cond_1

    sub-int v4, v4, v16

    goto :goto_5

    .restart local v8    # "heightMode":I
    .restart local v9    # "heightSize":I
    .restart local v17    # "widthMode":I
    .restart local v18    # "widthSize":I
    :sswitch_0
    move/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_6

    :sswitch_1
    move/from16 v4, v18

    goto :goto_6

    :sswitch_2
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_7

    :sswitch_3
    move v7, v9

    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    return-void
.end method

.method setExtraUpPadding(Z)V
    .locals 0
    .param p1, "havePadding"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mHaveExtraPadding:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShowIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setShowUp(Z)V
    .locals 2
    .param p1, "isUp"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    return-void
.end method
