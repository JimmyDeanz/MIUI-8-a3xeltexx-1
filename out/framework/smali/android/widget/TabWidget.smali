.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$1;,
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mChangedTheme:Z

.field private mDefaultTextSize:F

.field private mDrawBottomStrips:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field private mIsSetOpenTheme:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mMaxFontScale:F

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    iput v7, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 66
    iput-boolean v5, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 69
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 72
    iput v7, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 83
    const v4, 0x3f99999a    # 1.2f

    iput v4, p0, Landroid/widget/TabWidget;->mMaxFontScale:F

    .line 101
    sget-object v4, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 105
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-direct {p0}, Landroid/widget/TabWidget;->initTabWidget()V

    .line 111
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 112
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v7, 0x11600bd

    invoke-virtual {v4, v7, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 113
    iget v4, v1, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "current_sec_active_themepackage"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "themeName":Ljava/lang/String;
    iget-boolean v4, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v7, 0x230

    if-ne v4, v7, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Landroid/widget/TabWidget;->mChangedTheme:Z

    .line 117
    iget-boolean v4, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    :goto_2
    iput-boolean v5, p0, Landroid/widget/TabWidget;->mIsSetOpenTheme:Z

    .line 119
    iget-boolean v4, p0, Landroid/widget/TabWidget;->mIsSetOpenTheme:Z

    if-eqz v4, :cond_0

    .line 120
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const v5, 0x1080719

    if-ne v4, v5, :cond_0

    .line 121
    const v4, 0x10808a9

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TabWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    iget-boolean v4, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v4, v5, v7, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    const/16 v4, 0x8f

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 133
    .local v2, "tabTextAppearnceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    iget v4, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    iput v4, p0, Landroid/widget/TabWidget;->mDefaultTextSize:F

    .line 143
    .end local v2    # "tabTextAppearnceId":I
    :cond_1
    return-void

    .end local v3    # "themeName":Ljava/lang/String;
    :cond_2
    move v4, v6

    .line 113
    goto/16 :goto_0

    .restart local v3    # "themeName":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 116
    goto :goto_1

    :cond_4
    move v5, v6

    .line 117
    goto :goto_2
.end method

.method static synthetic access$100(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TabWidget;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 219
    invoke-virtual {p0, v3}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 221
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    .line 225
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_2

    .line 227
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 228
    const v1, 0x1080829

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 231
    :cond_0
    iget-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 232
    const v1, 0x108082b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/TabWidget;->setFocusable(Z)V

    .line 250
    invoke-virtual {p0, p0}, Landroid/widget/TabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 251
    return-void

    .line 237
    :cond_2
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 238
    const v1, 0x1080828

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 241
    :cond_3
    iget-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 242
    const v1, 0x108082a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 585
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 586
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 589
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 590
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 595
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 597
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 603
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 416
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 417
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 419
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 422
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 423
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 427
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 430
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    if-eqz v5, :cond_0

    .line 439
    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 441
    .local v4, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 442
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 444
    .local v3, "rightStrip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 445
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 447
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    if-eqz v5, :cond_2

    .line 448
    iget-object v0, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 449
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 450
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 451
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v2

    .line 452
    .local v2, "myHeight":I
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 454
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    iput-boolean v10, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 459
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "myHeight":I
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 512
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 513
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 514
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 515
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 518
    .end local v0    # "tabView":Landroid/view/View;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 561
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 564
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 567
    if-eq v0, p1, :cond_0

    .line 568
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 570
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 523
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 203
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 213
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 208
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 209
    iget p2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    goto :goto_0

    .line 210
    :cond_2
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    .line 211
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isStripEnabled()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 257
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 260
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 264
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 266
    return-void
.end method

.method measureHorizontal(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    if-nez v10, :cond_0

    .line 271
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 314
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 277
    .local v9, "width":I
    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    .line 279
    .local v8, "unspecifiedWidth":I
    const/4 v10, -0x1

    iput v10, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 280
    invoke-super {p0, v8, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 282
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    move-result v10

    sub-int v5, v10, v9

    .line 283
    .local v5, "extraWidth":I
    if-lez v5, :cond_6

    .line 284
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    .line 286
    .local v3, "count":I
    const/4 v1, 0x0

    .line 287
    .local v1, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 288
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 287
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 290
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 293
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-lez v1, :cond_6

    .line 294
    iget-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    array-length v10, v10

    if-eq v10, v3, :cond_4

    .line 295
    :cond_3
    new-array v10, v3, [I

    iput-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    .line 297
    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    .line 298
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 299
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    .line 297
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 300
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 301
    .local v2, "childWidth":I
    div-int v4, v5, v1

    .line 302
    .local v4, "delta":I
    const/4 v10, 0x0

    sub-int v11, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 303
    .local v7, "newWidth":I
    iget-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aput v7, v10, v6

    .line 305
    sub-int v10, v2, v7

    sub-int/2addr v5, v10

    .line 306
    add-int/lit8 v1, v1, -0x1

    .line 307
    iget v10, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    goto :goto_4

    .line 313
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childWidth":I
    .end local v3    # "count":I
    .end local v4    # "delta":I
    .end local v6    # "i":I
    .end local v7    # "newWidth":I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 620
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 621
    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    if-eqz p2, :cond_0

    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, "i":I
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 628
    .local v1, "numTabs":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 629
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 630
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 631
    iget-object v2, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/widget/TabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 632
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 638
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 529
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 530
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 531
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 532
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 166
    iget-boolean v6, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v6, :cond_2

    .line 167
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 168
    .local v2, "fontScale":F
    iget v6, p0, Landroid/widget/TabWidget;->mMaxFontScale:F

    cmpl-float v6, v2, v6

    if-lez v6, :cond_0

    .line 169
    iget v2, p0, Landroid/widget/TabWidget;->mMaxFontScale:F

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 173
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 174
    invoke-virtual {p0, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 176
    const v6, 0x1020016

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 177
    .local v5, "vTextView":Landroid/view/View;
    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 178
    check-cast v4, Landroid/widget/TextView;

    .line 179
    .local v4, "textView":Landroid/widget/TextView;
    const/4 v6, 0x1

    iget v7, p0, Landroid/widget/TabWidget;->mDefaultTextSize:F

    mul-float/2addr v7, v2

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 173
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "vTextView":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "fontScale":F
    .end local v3    # "i":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 189
    iget-boolean v6, p0, Landroid/widget/TabWidget;->mChangedTheme:Z

    if-eqz v6, :cond_3

    .line 190
    invoke-virtual {p0}, Landroid/widget/TabWidget;->twUpdateBackgroundBounds()V

    .line 193
    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 199
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 607
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 608
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 609
    return-void
.end method

.method public sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 491
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 496
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 498
    :cond_2
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 499
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 500
    iput-boolean v2, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 502
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 349
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 574
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 576
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 577
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 578
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 579
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 370
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 358
    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 359
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 360
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 361
    return-void
.end method

.method public setRightStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 391
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 379
    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 380
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 381
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 382
    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0
    .param p1, "stripEnabled"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 403
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 404
    return-void
.end method

.method setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TabWidget$OnTabSelectionChanged;

    .prologue
    .line 615
    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 616
    return-void
.end method

.method protected twUpdateBackgroundBounds()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 148
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 154
    .local v2, "target":Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/TabWidget;->mChangedTheme:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 155
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 156
    .local v1, "height":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 158
    .end local v1    # "height":I
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->twUpdateBackgroundBounds()V

    goto :goto_0
.end method
