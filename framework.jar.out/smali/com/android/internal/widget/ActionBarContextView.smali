.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mChangedTheme:Z

.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mIsSetOpenTheme:Z

.field private mMaxFontScale:F

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMaxFontScale:F

    .line 100
    sget-object v2, Lcom/android/internal/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 106
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 109
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 112
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 115
    const/4 v2, 0x5

    const v5, 0x109001f

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "current_sec_active_themepackage"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "packageName":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/widget/ActionBarContextView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v5, 0x230

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mChangedTheme:Z

    .line 124
    sget-boolean v2, Lcom/android/internal/widget/ActionBarContextView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsSetOpenTheme:Z

    .line 126
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsSetOpenTheme:Z

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v3, 0x1080718

    if-ne v2, v3, :cond_0

    .line 128
    const v2, 0x10808a7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    return-void

    :cond_1
    move v2, v4

    .line 123
    goto :goto_0

    :cond_2
    move v3, v4

    .line 124
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarContextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContextView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initTitle()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 238
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 240
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109001a

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 242
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x1020355

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 243
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x1020356

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 244
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 247
    :cond_0
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 252
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v4

    .line 256
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v4

    .line 257
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 260
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 262
    :cond_4
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_5
    move v1, v5

    .line 255
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_6
    move v0, v5

    .line 256
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_7
    move v3, v6

    .line 257
    goto :goto_2
.end method


# virtual methods
.method public closeMode()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 366
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 405
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 410
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 265
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v4, :cond_2

    .line 266
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 267
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 268
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 273
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v5, 0x1020357

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "closeButton":Landroid/view/View;
    new-instance v4, Lcom/android/internal/widget/ActionBarContextView$1;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$1;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    new-instance v4, Lcom/android/internal/widget/ActionBarContextView$2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ActionBarContextView$2;-><init>(Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 330
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuBuilder;

    .line 331
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v4, :cond_1

    .line 332
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 334
    :cond_1
    new-instance v4, Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 335
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, v7}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 337
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 339
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_3

    .line 340
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 341
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 342
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    :goto_1
    return-void

    .line 269
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 270
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 346
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v7}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 349
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 351
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 352
    iget v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 353
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 354
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 355
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 373
    :cond_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 374
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 375
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    sget-boolean v1, Lcom/android/internal/widget/ActionBarContextView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->ActionMode:[I

    const v4, 0x1010394

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsSetOpenTheme:Z

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v2, 0x1080718

    if-ne v1, v2, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10808a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 148
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 165
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 600
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 602
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 603
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->isLayoutRtl()Z

    move-result v5

    .line 564
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 565
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 566
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 568
    .local v4, "contentHeight":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 570
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 571
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_6

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 572
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 573
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 574
    invoke-static {v2, v12, v5}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 578
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 579
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 583
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 586
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 588
    :goto_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_3

    .line 589
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v5, :cond_8

    const/4 v11, 0x1

    :goto_4
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 591
    :cond_3
    return-void

    .line 564
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 570
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 571
    .restart local v14    # "startMargin":I
    :cond_6
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 586
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    .line 589
    :cond_8
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 415
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v27

    .line 416
    .local v27, "widthMode":I
    const/high16 v28, 0x40000000    # 2.0f

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 417
    new-instance v28, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " can only be used "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 421
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 422
    .local v14, "heightMode":I
    if-nez v14, :cond_1

    .line 423
    new-instance v28, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " can only be used "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 427
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 429
    .local v6, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v28, v0

    if-lez v28, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v17, v0

    .line 432
    .local v17, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v29

    add-int v26, v28, v29

    .line 433
    .local v26, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v28

    sub-int v28, v6, v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v29

    sub-int v4, v28, v29

    .line 434
    .local v4, "availableWidth":I
    sub-int v13, v17, v26

    .line 435
    .local v13, "height":I
    const/high16 v28, -0x80000000

    move/from16 v0, v28

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 437
    .local v5, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v4

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 440
    .local v16, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    sub-int v4, v4, v28

    .line 443
    .end local v16    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v4

    .line 448
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    if-nez v28, :cond_b

    .line 450
    sget-boolean v28, Lcom/android/internal/widget/ActionBarContextView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v28, :cond_5

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    move/from16 v29, v0

    sget-object v30, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 454
    .local v3, "appearance":Landroid/content/res/TypedArray;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v25

    .line 455
    .local v25, "value":Landroid/util/TypedValue;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 457
    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v20

    .line 458
    .local v20, "textSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    move-object/from16 v0, v28

    iget v12, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 461
    .local v12, "fontScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mMaxFontScale:F

    move/from16 v28, v0

    cmpl-float v28, v12, v28

    if-lez v28, :cond_4

    .line 462
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ActionBarContextView;->mMaxFontScale:F

    .line 464
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    mul-float v30, v20, v12

    invoke-virtual/range {v28 .. v30}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 473
    .end local v3    # "appearance":Landroid/content/res/TypedArray;
    .end local v12    # "fontScale":F
    .end local v20    # "textSize":F
    .end local v25    # "value":Landroid/util/TypedValue;
    :cond_5
    :goto_1
    sget-boolean v28, Lcom/android/internal/widget/ActionBarContextView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 474
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getVisibility()I

    move-result v28

    if-nez v28, :cond_8

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 476
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutDirection()I

    move-result v28

    if-nez v28, :cond_10

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050135

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 481
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getVisibility()I

    move-result v28

    if-nez v28, :cond_9

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 485
    .restart local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutDirection()I

    move-result v28

    if-nez v28, :cond_11

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050135

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 490
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    move/from16 v28, v0

    if-eqz v28, :cond_14

    .line 495
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v23

    .line 497
    .local v23, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v22

    .line 499
    .local v22, "titleWidth":I
    move/from16 v0, v22

    if-gt v0, v4, :cond_12

    const/16 v21, 0x1

    .line 500
    .local v21, "titleFits":Z
    :goto_4
    if-eqz v21, :cond_a

    .line 501
    sub-int v4, v4, v22

    .line 503
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    if-eqz v21, :cond_13

    const/16 v28, 0x0

    :goto_5
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    .end local v21    # "titleFits":Z
    .end local v22    # "titleWidth":I
    .end local v23    # "titleWidthSpec":I
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 511
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    const/high16 v11, 0x40000000    # 2.0f

    .line 513
    .local v11, "customWidthMode":I
    :goto_7
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    if-ltz v28, :cond_16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 515
    .local v10, "customWidth":I
    :goto_8
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_17

    const/high16 v9, 0x40000000    # 2.0f

    .line 517
    .local v9, "customHeightMode":I
    :goto_9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    if-ltz v28, :cond_18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 519
    .local v8, "customHeight":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    invoke-virtual/range {v28 .. v30}, Landroid/view/View;->measure(II)V

    .line 523
    .end local v8    # "customHeight":I
    .end local v9    # "customHeightMode":I
    .end local v10    # "customWidth":I
    .end local v11    # "customWidthMode":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v28, v0

    if-gtz v28, :cond_1b

    .line 524
    const/16 v18, 0x0

    .line 525
    .local v18, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v7

    .line 526
    .local v7, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_b
    if-ge v15, v7, :cond_19

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 528
    .local v24, "v":Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v19, v28, v26

    .line 529
    .local v19, "paddedViewHeight":I
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    .line 530
    move/from16 v18, v19

    .line 526
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 429
    .end local v4    # "availableWidth":I
    .end local v5    # "childSpecHeight":I
    .end local v7    # "count":I
    .end local v13    # "height":I
    .end local v15    # "i":I
    .end local v17    # "maxHeight":I
    .end local v18    # "measuredHeight":I
    .end local v19    # "paddedViewHeight":I
    .end local v24    # "v":Landroid/view/View;
    .end local v26    # "verticalPadding":I
    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    goto/16 :goto_0

    .line 467
    .restart local v3    # "appearance":Landroid/content/res/TypedArray;
    .restart local v4    # "availableWidth":I
    .restart local v5    # "childSpecHeight":I
    .restart local v13    # "height":I
    .restart local v17    # "maxHeight":I
    .restart local v20    # "textSize":F
    .restart local v25    # "value":Landroid/util/TypedValue;
    .restart local v26    # "verticalPadding":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 479
    .end local v3    # "appearance":Landroid/content/res/TypedArray;
    .end local v20    # "textSize":F
    .end local v25    # "value":Landroid/util/TypedValue;
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050135

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 488
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050135

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 499
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v22    # "titleWidth":I
    .restart local v23    # "titleWidthSpec":I
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 503
    .restart local v21    # "titleFits":Z
    :cond_13
    const/16 v28, 0x8

    goto/16 :goto_5

    .line 505
    .end local v21    # "titleFits":Z
    .end local v22    # "titleWidth":I
    .end local v23    # "titleWidthSpec":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v4

    goto/16 :goto_6

    .line 511
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_15
    const/high16 v11, -0x80000000

    goto/16 :goto_7

    .restart local v11    # "customWidthMode":I
    :cond_16
    move v10, v4

    .line 513
    goto/16 :goto_8

    .line 515
    .restart local v10    # "customWidth":I
    :cond_17
    const/high16 v9, -0x80000000

    goto/16 :goto_9

    .restart local v9    # "customHeightMode":I
    :cond_18
    move v8, v13

    .line 517
    goto/16 :goto_a

    .line 533
    .end local v9    # "customHeightMode":I
    .end local v10    # "customWidth":I
    .end local v11    # "customWidthMode":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v7    # "count":I
    .restart local v15    # "i":I
    .restart local v18    # "measuredHeight":I
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 539
    .end local v7    # "count":I
    .end local v15    # "i":I
    .end local v18    # "measuredHeight":I
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mChangedTheme:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1a

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->twUpdateBackgroundBounds()V

    .line 543
    :cond_1a
    return-void

    .line 535
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_c
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 202
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 209
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 213
    :cond_1
    if-eqz p1, :cond_2

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 217
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 6
    .param p1, "split"    # Z

    .prologue
    const/4 v5, -0x1

    .line 169
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 170
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 172
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 174
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 175
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 176
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 178
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 198
    :cond_2
    return-void

    .line 182
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 185
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 187
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    iget v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 190
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 192
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 193
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 226
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 227
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 221
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 222
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 615
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 616
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected twUpdateBackgroundBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 549
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 559
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mChangedTheme:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 555
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getRight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 557
    .end local v1    # "height":I
    :cond_1
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->twUpdateBackgroundBounds()V

    goto :goto_0
.end method
