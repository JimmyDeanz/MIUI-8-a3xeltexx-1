.class public Lcom/android/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBadgeView:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCheckedTextColorMode:Z

.field private mIsDeviceDefaultLight:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    sget-object v3, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 75
    .local v2, "outValue":Landroid/util/TypedValue;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 76
    .local v1, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600bd

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600bf

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 78
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-nez v3, :cond_0

    .line 79
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    .line 81
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 82
    const/4 v3, -0x1

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 84
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 86
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertBadge()V
    .locals 3

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 346
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 349
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 350
    return-void
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 335
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 338
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 342
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 320
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109008f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 322
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 323
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 327
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 330
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 331
    return-void
.end method

.method private isNumericValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 293
    if-nez p1, :cond_0

    .line 302
    :goto_0
    return v1

    .line 298
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    const/4 v1, 0x1

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private setBadgeText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertBadge()V

    .line 278
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ListMenuItemView;->isNumericValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, "num":I
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    move-object v1, p1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .end local v0    # "num":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    return-void

    .line 280
    .restart local v0    # "num":I
    :cond_1
    const-string v1, "N"

    goto :goto_0

    .line 282
    .end local v0    # "num":I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 285
    :cond_3
    const/16 v1, 0x8

    goto :goto_2
.end method


# virtual methods
.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 6
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    const/4 v3, 0x0

    .line 115
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 116
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mMenuType:I

    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "ts":I
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsCheckedTextColorMode:Z

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 124
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 127
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 129
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->semGetBadgeText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setBadgeText(Ljava/lang/String;)V

    .line 131
    const v2, 0x1020016

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 134
    iget v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    .end local v0    # "appearance":Landroid/content/res/TypedArray;
    :cond_0
    if-eqz v1, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 143
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 119
    goto :goto_0

    .line 122
    :cond_3
    const/16 v2, 0x8

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 103
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 106
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 111
    :cond_0
    const v0, 0x10203fb

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 112
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 371
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 374
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 310
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 311
    .local v0, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 312
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 315
    .end local v0    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 316
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 6
    .param p1, "checkable"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 163
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 173
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v3, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 177
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 186
    .local v2, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_8

    .line 187
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 189
    if-eqz p1, :cond_7

    .line 190
    .local v1, "newVisibility":I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 195
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 196
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 199
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsCheckedTextColorMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    check-cast v3, Landroid/widget/CheckedTextView;

    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 201
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    .line 179
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "newVisibility":I
    .end local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_6

    .line 180
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 183
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_7
    move v1, v4

    .line 189
    goto :goto_2

    .line 204
    :cond_8
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 205
    :cond_9
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 206
    :cond_a
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    instance-of v3, v3, Landroid/widget/CheckedTextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    check-cast v3, Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 225
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 226
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsCheckedTextColorMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/CheckedTextView;

    invoke-virtual {v1, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 229
    :cond_1
    return-void

    .line 219
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_3

    .line 220
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 147
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 246
    .local v0, "showIcon":Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 267
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    .end local v0    # "showIcon":Z
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v0, v1

    .line 245
    goto :goto_0

    .line 250
    .restart local v0    # "showIcon":Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 254
    :cond_4
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 255
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertIconView()V

    .line 258
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 259
    :cond_6
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 259
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 265
    :cond_8
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 232
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 235
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    :cond_1
    return-void

    .line 232
    .end local v0    # "newVisibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 150
    if-eqz p1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
