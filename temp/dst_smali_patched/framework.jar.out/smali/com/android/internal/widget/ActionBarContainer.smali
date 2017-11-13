.class public Lcom/android/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarContainer$1;,
        Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;
    }
.end annotation


# static fields
.field protected static mIsThemeDeviceDefaultFamily:Z


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private mActionContextView:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mIgnoreConfigurationUpdate:Z

.field private mIsSetOpenTheme:Z

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTabOnTop:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private mWasChangedTheme:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTabOnTop:Z

    new-instance v3, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer$1;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v6, 0x11600bd

    invoke-virtual {v3, v6, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/android/internal/widget/ActionBarContainer;->mIsThemeDeviceDefaultFamily:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "current_sec_active_themepackage"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/widget/ActionBarContainer;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x230

    if-ne v3, v6, :cond_4

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mWasChangedTheme:Z

    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    if-eqz v3, :cond_6

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const v6, 0x1080718

    if-ne v3, v6, :cond_5

    const v3, 0x10808a7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    :goto_3
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x4

    const/4 v6, -0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    const v6, 0x1020486

    if-ne v3, v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_7

    :cond_1
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    move v3, v5

    goto/16 :goto_0

    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_5
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_7
    move v4, v5

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    :cond_9
    move v4, v5

    goto :goto_4
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private static isCollapsed(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

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
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    return-void
.end method

.method public getContainerHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    return v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    sget-boolean v2, Lcom/android/internal/widget/ActionBarContainer;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIgnoreConfigurationUpdate:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v3, 0x1080718

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10808a7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .local v1, "height":I
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mWasChangedTheme:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v1    # "height":I
    :cond_1
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    :cond_2
    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_3
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x1020484

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    const v0, 0x1020485

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .local v10, "tabContainer":Landroid/view/View;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_1

    const/4 v5, 0x1

    .local v5, "hasTabs":Z
    :goto_0
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v3

    .local v3, "containerHeight":I
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .local v11, "tabHeight":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mIsTabOnTop:Z

    if-eqz v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v4

    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v2, v12, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "containerHeight":I
    .end local v4    # "count":I
    .end local v5    # "hasTabs":Z
    .end local v7    # "i":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "tabHeight":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "containerHeight":I
    .restart local v4    # "count":I
    .restart local v5    # "hasTabs":Z
    .restart local v7    # "i":I
    .restart local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "tabHeight":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-static {v12}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v2, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v13, 0x0

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v12, v0, v13, v1, v11}, Landroid/view/View;->layout(IIII)V

    .end local v3    # "containerHeight":I
    .end local v4    # "count":I
    .end local v7    # "i":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "tabHeight":I
    :cond_4
    :goto_3
    const/4 v9, 0x0

    .local v9, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v9, 0x1

    :cond_5
    :goto_4
    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    :cond_6
    return-void

    .end local v9    # "needsInvalidate":Z
    .restart local v3    # "containerHeight":I
    .restart local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "tabHeight":I
    :cond_7
    sub-int v12, v3, v11

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v13, v3, v13

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v10, v0, v12, v1, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .end local v3    # "containerHeight":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "tabHeight":I
    .restart local v9    # "needsInvalidate":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    .local v6, "height":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mWasChangedTheme:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v6, v12

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v12, v13, v14, v15, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v6    # "height":I
    :goto_5
    const/4 v9, 0x1

    :cond_a
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5
.end method

.method public onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-ne v6, v8, :cond_0

    iget v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    const/4 v5, 0x0

    .local v5, "nonTabMaxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v0, v6, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v6

    goto :goto_3

    .end local v0    # "child":Landroid/view/View;
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .local v4, "mode":I
    if-ne v4, v8, :cond_6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .local v3, "maxHeight":I
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .end local v3    # "maxHeight":I
    :cond_6
    const v3, 0x7fffffff

    goto :goto_4
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onResolveDrawables(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIgnoreConfigurationUpdate:Z

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .local v0, "height":I
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mWasChangedTheme:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v0    # "height":I
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidateOutline()V

    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    return-void

    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_3

    const/4 v0, 0x1

    .local v0, "isVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void

    .end local v0    # "isVisible":Z
    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    if-eqz p3, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public twPutTabsOnTop(Z)V
    .locals 0
    .param p1, "isTabOnTop"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTabOnTop:Z

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
