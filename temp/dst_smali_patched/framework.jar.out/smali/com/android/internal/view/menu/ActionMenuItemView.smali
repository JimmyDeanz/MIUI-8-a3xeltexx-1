.class public Lcom/android/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;,
        Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"

.field private static final TEMP_TOAST_HEIGHT:I = 0x28


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAllowTextWithIcon:Z

.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mDefaultTextSize:F

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

.field private mHasCocktailBar:Z

.field private mHasSPenFeature:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsMultiWindow:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxFontScale:F

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mHasSPenFeature:Z

    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mHasCocktailBar:Z

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    const v7, 0x3f99999a    # 1.2f

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxFontScale:F

    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsMultiWindow:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x112006b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    sget-object v7, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .local v2, "density":F
    const/high16 v7, 0x42000000    # 32.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11600bd

    invoke-virtual {v7, v8, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v3, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_1

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    iget-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v5, v9, v7, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v5, 0xbb

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, "actionMeneTextAppearnceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_0

    iget v5, v3, Landroid/util/TypedValue;->data:I

    invoke-static {v5}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    .end local v1    # "actionMeneTextAppearnceId":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mHasSPenFeature:Z

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mHasCocktailBar:Z

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_2

    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_2

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mActivity:Landroid/app/Activity;

    :goto_1
    return-void

    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    iput-object v9, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mActivity:Landroid/app/Activity;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method private changeButtonBackground()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .local v0, "show":Z
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x10808ae

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setBackgroundResource(I)V

    goto :goto_0

    .end local v0    # "show":Z
    :cond_1
    move v0, v1

    goto :goto_1

    .restart local v0    # "show":Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTextButtonVisibility()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    .local v1, "visible":Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v4, :cond_6

    :cond_0
    move v4, v2

    :goto_1
    and-int/2addr v1, v4

    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->fontScale:F

    .local v0, "fontScale":F
    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxFontScale:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxFontScale:F

    :cond_1
    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    mul-float/2addr v4, v0

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTextSize(IF)V

    .end local v0    # "fontScale":F
    :cond_2
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHoverUIFeatureLevel()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_4

    :cond_3
    if-eqz v1, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->setHoverPopupType(I)V

    :cond_4
    :goto_3
    return-void

    .end local v1    # "visible":Z
    :cond_5
    move v1, v3

    goto :goto_0

    .restart local v1    # "visible":Z
    :cond_6
    move v4, v3

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setHoverPopupType(I)V

    goto :goto_3
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setId(I)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102d8

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setMinHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 24
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v22

    if-nez v22, :cond_1

    :cond_0
    const/16 v22, 0x0

    :goto_0
    return v22

    :cond_1
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v15, v0, [I

    .local v15, "screenPos":[I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1050017

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .local v17, "statusBarHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v19

    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v9

    .local v9, "height":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .local v16, "screenWidth":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v14, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v14, "screenHeight":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .local v6, "density":F
    const/16 v22, 0x0

    aget v22, v15, v22

    div-int/lit8 v23, v19, 0x2

    add-int v13, v22, v23

    .local v13, "referenceX":I
    const/4 v8, 0x0

    .local v8, "hasCocktailBarOnTop":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mHasCocktailBar:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "window"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .local v2, "WM":Landroid/view/WindowManager;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getRotation()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    .end local v2    # "WM":Landroid/view/WindowManager;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v22

    if-nez v22, :cond_5

    sub-int v13, v16, v13

    const/4 v10, 0x5

    .local v10, "horizontalGravity":I
    :goto_1
    const/high16 v22, 0x40a00000    # 5.0f

    mul-float v22, v22, v6

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v13, v13, v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .local v3, "cheatSheet":Landroid/widget/Toast;
    :goto_2
    const/4 v12, 0x0

    .local v12, "offsetY":I
    const/16 v22, 0x1

    aget v22, v15, v22

    add-int v22, v22, v9

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    if-ne v9, v0, :cond_8

    :cond_3
    if-eqz v8, :cond_7

    const/16 v22, 0x1

    aget v12, v15, v22

    :goto_3
    or-int/lit8 v22, v10, 0x30

    add-int v23, v9, v12

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v13, v1}, Landroid/widget/Toast;->setGravity(III)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    .local v11, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v22

    if-eqz v22, :cond_4

    const/high16 v22, 0x42200000    # 40.0f

    mul-float v22, v22, v6

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .local v18, "tempToastHeight":I
    const/4 v7, 0x0

    .local v7, "gravity":I
    const/16 v20, 0x0

    .local v20, "xOffset":I
    const/16 v21, 0x0

    .local v21, "yOffset":I
    const/16 v22, 0x1

    aget v22, v15, v22

    add-int v22, v22, v9

    add-int v22, v22, v18

    move/from16 v0, v22

    if-ge v0, v14, :cond_9

    const/16 v7, 0x35

    const/16 v22, 0x0

    aget v22, v15, v22

    sub-int v22, v16, v22

    div-int/lit8 v23, v19, 0x2

    sub-int v20, v22, v23

    const/16 v22, 0x1

    aget v22, v15, v22

    add-int v21, v22, v9

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v7, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .end local v7    # "gravity":I
    .end local v18    # "tempToastHeight":I
    .end local v20    # "xOffset":I
    .end local v21    # "yOffset":I
    :cond_4
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/16 v22, 0x1

    goto/16 :goto_0

    .end local v3    # "cheatSheet":Landroid/widget/Toast;
    .end local v10    # "horizontalGravity":I
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v12    # "offsetY":I
    :cond_5
    const/4 v10, 0x3

    .restart local v10    # "horizontalGravity":I
    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .restart local v3    # "cheatSheet":Landroid/widget/Toast;
    goto/16 :goto_2

    .restart local v12    # "offsetY":I
    :cond_7
    const/16 v22, 0x1

    aget v22, v15, v22

    sub-int v12, v22, v17

    goto :goto_3

    :cond_8
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v12, v14, v22

    or-int/lit8 v22, v10, 0x50

    add-int v23, v9, v12

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v13, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_4

    .restart local v7    # "gravity":I
    .restart local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v18    # "tempToastHeight":I
    .restart local v20    # "xOffset":I
    .restart local v21    # "yOffset":I
    :cond_9
    const/16 v7, 0x55

    const/16 v22, 0x0

    aget v22, v15, v22

    sub-int v22, v16, v22

    div-int/lit8 v23, v19, 0x2

    sub-int v20, v22, v23

    move/from16 v21, v9

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    .local v3, "textVisible":Z
    if-eqz v3, :cond_0

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_0

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .local v6, "widthSize":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    .local v1, "oldMeasuredWidth":I
    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_3

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "targetWidth":I
    :goto_0
    if-eq v5, v11, :cond_1

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_1

    if-ge v1, v2, :cond_1

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_1
    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    .local v4, "w":I
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    .local v0, "dw":I
    sub-int v7, v4, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .end local v0    # "dw":I
    .end local v4    # "w":I
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->changeButtonBackground()V

    return-void

    .end local v2    # "targetWidth":I
    :cond_3
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    :cond_0
    return-void
.end method

.method public setHovered(Z)V
    .locals 1
    .param p1, "hovered"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setHovered(Z)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .local v0, "height":I
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .local v1, "scale":F
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .end local v1    # "scale":F
    :cond_0
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .restart local v1    # "scale":F
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v5, v5, p1, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void

    :cond_3
    invoke-virtual {p0, p1, v5, v5, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
