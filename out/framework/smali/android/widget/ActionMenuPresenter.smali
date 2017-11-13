.class public Landroid/widget/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;,
        Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;,
        Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/widget/ActionMenuPresenter$SemOverflowText;,
        Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;,
        Landroid/widget/ActionMenuPresenter$SemOverflowImage;,
        Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_ANIMATIONS_ENABLED:Z = false

.field private static final ITEM_ANIMATION_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mExpandedActionViewsExclusive:Z

.field private mHasCocktailBar:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mIsThemeDeviceDefaultLightFamily:Z

.field private mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mPreLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mRunningItemAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStrictWidthLimit:Z

.field private mUseTextItemMode:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 163
    const v2, 0x109001d

    const v5, 0x109001c

    invoke-direct {p0, p1, v2, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 108
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 116
    new-instance v2, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 121
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    .line 123
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    .line 128
    new-instance v2, Landroid/widget/ActionMenuPresenter$1;

    invoke-direct {v2, p0}, Landroid/widget/ActionMenuPresenter$1;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 138
    new-instance v2, Landroid/widget/ActionMenuPresenter$2;

    invoke-direct {v2, p0}, Landroid/widget/ActionMenuPresenter$2;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 159
    iput-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mHasCocktailBar:Z

    .line 167
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 168
    .local v1, "outValue":Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 169
    .local v0, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x11600bd

    invoke-virtual {v2, v5, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x11600bf

    invoke-virtual {v2, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 171
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    .line 172
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultLightFamily:Z

    .line 174
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x11200d9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    .line 177
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mHasCocktailBar:Z

    .line 179
    return-void

    :cond_0
    move v2, v4

    .line 171
    goto :goto_0

    :cond_1
    move v2, v4

    .line 172
    goto :goto_1

    :cond_2
    move v3, v4

    .line 174
    goto :goto_2
.end method

.method static synthetic access$100(Landroid/widget/ActionMenuPresenter;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mHasCocktailBar:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->isSupportOverlapSubMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuPresenter;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->runItemAnimations()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    return-object v0
.end method

.method private computeMenuItemAnimationInfo(Z)V
    .locals 8
    .param p1, "preLayout"    # Z

    .prologue
    .line 391
    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    .line 392
    .local v6, "menuView":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 393
    .local v1, "count":I
    if-eqz p1, :cond_1

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    .line 394
    .local v5, "items":Landroid/util/SparseArray;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 395
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 397
    .local v3, "id":I
    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    if-eqz v7, :cond_0

    .line 398
    new-instance v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    invoke-direct {v4, v0, p1}, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;-><init>(Landroid/view/View;Z)V

    .line 399
    .local v4, "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    .end local v4    # "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 393
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v5    # "items":Landroid/util/SparseArray;
    :cond_1
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    goto :goto_0

    .line 402
    .restart local v2    # "i":I
    .restart local v5    # "items":Landroid/util/SparseArray;
    :cond_2
    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 704
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 705
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 715
    :cond_0
    :goto_0
    return-object v0

    .line 707
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 708
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 709
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 710
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 708
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 715
    goto :goto_0
.end method

.method private isSupportOverlapSubMenu()Z
    .locals 1

    .prologue
    .line 700
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultLightFamily:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private runItemAnimations()V
    .locals 20

    .prologue
    .line 413
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v3, v15, :cond_b

    .line 414
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 415
    .local v4, "id":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 416
    .local v9, "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    .line 417
    .local v12, "postLayoutIndex":I
    if-ltz v12, :cond_8

    .line 419
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 421
    .local v8, "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v13, 0x0

    .line 422
    .local v13, "pvhX":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x0

    .line 423
    .local v14, "pvhY":Landroid/animation/PropertyValuesHolder;
    iget v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 424
    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v18, v0

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 427
    :cond_0
    iget v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 428
    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v18, v0

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 431
    :cond_1
    if-nez v13, :cond_2

    if-eqz v14, :cond_5

    .line 432
    :cond_2
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 433
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 434
    .local v11, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_3

    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-nez v15, :cond_3

    .line 435
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 432
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 439
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_4
    if-eqz v13, :cond_7

    .line 440
    if-eqz v14, :cond_6

    .line 441
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 449
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 450
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 451
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x0

    invoke-direct {v5, v4, v8, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 453
    .local v5, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v15, Landroid/widget/ActionMenuPresenter$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ActionMenuPresenter$3;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 466
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 413
    .end local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 444
    .restart local v6    # "j":I
    .restart local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .restart local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :cond_6
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 447
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 469
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v6    # "j":I
    .end local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/high16 v10, 0x3f800000    # 1.0f

    .line 470
    .local v10, "oldAlpha":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_a

    .line 471
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 472
    .restart local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_9

    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 473
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v15, v15, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 474
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 470
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 477
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_a
    iget-object v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 480
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    iget-object v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 481
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 482
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 483
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x2

    invoke-direct {v5, v4, v9, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 484
    .restart local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v15, Landroid/widget/ActionMenuPresenter$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Landroid/widget/ActionMenuPresenter$4;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_3

    .line 499
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v4    # "id":I
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    .end local v9    # "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v10    # "oldAlpha":F
    .end local v12    # "postLayoutIndex":I
    :cond_b
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v3, v15, :cond_f

    .line 500
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 501
    .restart local v4    # "id":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    .line 502
    .restart local v12    # "postLayoutIndex":I
    if-ltz v12, :cond_e

    .line 504
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 506
    .local v7, "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v10, 0x0

    .line 507
    .restart local v10    # "oldAlpha":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_d

    .line 508
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 509
    .restart local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_c

    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 510
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v15, v15, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 511
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 507
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 514
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_d
    iget-object v15, v7, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 516
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 517
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 518
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x1

    invoke-direct {v5, v4, v7, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 519
    .restart local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v15, Landroid/widget/ActionMenuPresenter$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ActionMenuPresenter$5;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 499
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    .end local v7    # "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v10    # "oldAlpha":F
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 533
    .end local v4    # "id":I
    .end local v12    # "postLayoutIndex":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 534
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 535
    return-void
.end method

.method private setupItemAnimations()V
    .locals 2

    .prologue
    .line 542
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    .line 543
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 545
    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 365
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 367
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/widget/ActionMenuView;

    .local v1, "menuView":Landroid/widget/ActionMenuView;
    move-object v0, p2

    .line 368
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 369
    .local v0, "actionItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 371
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 372
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 374
    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 375
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 764
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 765
    .local v0, "result":Z
    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->isSupportOverlapSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 768
    :cond_1
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 630
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 631
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 804
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 805
    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 806
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 807
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 808
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 810
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 811
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 812
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 813
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 814
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v15, :cond_3

    .line 815
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 816
    .local v14, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 817
    add-int/lit8 v22, v22, 0x1

    .line 823
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 826
    const/16 v17, 0x0

    .line 814
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 818
    :cond_1
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 819
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 821
    :cond_2
    const/4 v10, 0x1

    goto :goto_1

    .line 831
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    if-nez v10, :cond_4

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 833
    :cond_4
    add-int/lit8 v17, v17, -0x1

    .line 835
    :cond_5
    sub-int v17, v17, v22

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 838
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 840
    const/4 v4, 0x0

    .line 841
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 842
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 843
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 845
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 849
    .end local v5    # "cellSizeRemaining":I
    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v15, :cond_1d

    .line 850
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 852
    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 853
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 854
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 855
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 860
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 861
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 862
    if-nez v8, :cond_7

    .line 863
    move/from16 v8, v18

    .line 865
    :cond_7
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 866
    .local v9, "groupId":I
    if-eqz v9, :cond_8

    .line 867
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 869
    :cond_8
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 849
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 858
    .restart local v24    # "v":Landroid/view/View;
    :cond_9
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 870
    .end local v24    # "v":Landroid/view/View;
    :cond_a
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 873
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 874
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 875
    .local v12, "inGroup":Z
    if-gtz v17, :cond_b

    if-eqz v12, :cond_12

    :cond_b
    if-lez v26, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    if-lez v7, :cond_12

    :cond_c
    const/4 v13, 0x1

    .line 878
    .local v13, "isAction":Z
    :goto_5
    if-eqz v13, :cond_f

    .line 879
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 880
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_13

    .line 881
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 883
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 884
    if-nez v6, :cond_d

    .line 885
    const/4 v13, 0x0

    .line 890
    .end local v6    # "cells":I
    :cond_d
    :goto_6
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 891
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 892
    if-nez v8, :cond_e

    .line 893
    move/from16 v8, v18

    .line 896
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 897
    if-ltz v26, :cond_14

    const/16 v27, 0x1

    :goto_7
    and-int v13, v13, v27

    .line 908
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_f
    :goto_8
    if-eqz v13, :cond_19

    if-eqz v9, :cond_19

    .line 909
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 923
    :cond_10
    if-eqz v13, :cond_11

    add-int/lit8 v17, v17, -0x1

    .line 925
    :cond_11
    invoke-virtual {v14, v13}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_4

    .line 875
    .end local v13    # "isAction":Z
    :cond_12
    const/4 v13, 0x0

    goto :goto_5

    .line 888
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_13
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 897
    .restart local v18    # "measuredWidth":I
    :cond_14
    const/16 v27, 0x0

    goto :goto_7

    .line 900
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    move/from16 v27, v0

    if-eqz v27, :cond_17

    .line 901
    if-ltz v26, :cond_16

    const/16 v27, 0x1

    :goto_9
    and-int v13, v13, v27

    goto :goto_8

    :cond_16
    const/16 v27, 0x0

    goto :goto_9

    .line 903
    :cond_17
    add-int v27, v26, v8

    if-lez v27, :cond_18

    const/16 v27, 0x1

    :goto_a
    and-int v13, v13, v27

    goto :goto_8

    :cond_18
    const/16 v27, 0x0

    goto :goto_a

    .line 910
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_19
    if-eqz v12, :cond_10

    .line 912
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 913
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v11, :cond_10

    .line 914
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 915
    .local v3, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1b

    .line 917
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_1a

    add-int/lit8 v17, v17, 0x1

    .line 918
    :cond_1a
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 913
    :cond_1b
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 928
    .end local v3    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1c
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 931
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1d
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 349
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 353
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 355
    check-cast v2, Landroid/widget/ActionMenuView;

    .line 356
    .local v2, "menuParent":Landroid/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 357
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 358
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    :cond_2
    return-object v0

    .line 353
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Landroid/widget/ActionMenuView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 335
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 336
    .local v0, "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .line 337
    .local v1, "result":Lcom/android/internal/view/menu/MenuView;
    if-eq v0, v1, :cond_1

    move-object v2, v1

    .line 338
    check-cast v2, Landroid/widget/ActionMenuView;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 339
    if-eqz v0, :cond_0

    .line 340
    check-cast v0, Landroid/view/View;

    .end local v0    # "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    move-object v2, v1

    .line 342
    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 344
    :cond_1
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    if-eqz v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-object v1

    .line 320
    :cond_1
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 321
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 323
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 325
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 327
    :cond_3
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v2, :cond_0

    .line 328
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 745
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 747
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 756
    :goto_0
    return v1

    .line 751
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 752
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 754
    goto :goto_0

    .line 756
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 779
    const/4 v0, 0x1

    .line 781
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 183
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 186
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_0

    .line 187
    const v4, 0x1090121

    const v5, 0x1090120

    invoke-super {p0, v4, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setMenuLayoutRes(II)V

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 194
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 195
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_1

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 199
    :cond_1
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_2

    .line 200
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 202
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_2

    .line 203
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 209
    :cond_2
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_3

    .line 210
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 213
    :cond_3
    iget v3, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 214
    .local v3, "width":I
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_7

    .line 215
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_5

    .line 216
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_6

    .line 217
    new-instance v4, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 226
    :cond_4
    :goto_0
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 227
    .local v2, "spec":I
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 229
    .end local v2    # "spec":I
    :cond_5
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 234
    :goto_1
    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 236
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 237
    return-void

    .line 219
    :cond_6
    new-instance v4, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 220
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v4, :cond_4

    .line 221
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v4, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iput-object v9, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 223
    iput-boolean v8, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    goto :goto_0

    .line 231
    :cond_7
    iput-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_1
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

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

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 936
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 937
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 938
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 241
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102f6

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 246
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/16 v2, 0x25

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 248
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v1, :cond_2

    .line 258
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 263
    :cond_2
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v1, :cond_3

    .line 264
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 265
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_3

    .line 266
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 269
    :cond_3
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 270
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 276
    :goto_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_4

    .line 277
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 279
    :cond_4
    return-void

    .line 272
    :cond_5
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 949
    move-object v1, p1

    check-cast v1, Landroid/widget/ActionMenuPresenter$SavedState;

    .line 950
    .local v1, "saved":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v3, v1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 951
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, v1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 952
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 953
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 954
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 957
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 942
    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 943
    .local v0, "state":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 944
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 635
    if-nez p1, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v2

    .line 636
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    move-object v1, p1

    .line 639
    .local v1, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    .line 640
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 642
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 643
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 644
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 645
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 648
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 649
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 650
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 651
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 652
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 653
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 961
    if-eqz p1, :cond_0

    .line 963
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 967
    :goto_0
    return-void

    .line 965
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public semOnSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)Z
    .locals 6
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 662
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 692
    :cond_0
    :goto_0
    return v3

    .line 663
    :cond_1
    if-eqz p1, :cond_0

    .line 664
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 666
    const/4 v1, 0x1

    .line 668
    .local v1, "isActionSubMenu":Z
    move-object v2, p1

    .line 669
    .local v2, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v4, v5, :cond_2

    .line 670
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    .end local v2    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v2    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 672
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 673
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 674
    const/4 v1, 0x0

    .line 675
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 676
    const/4 v0, 0x0

    .line 677
    if-nez v0, :cond_3

    .line 678
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 682
    :cond_3
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->isSupportOverlapSubMenu()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_5

    .line 683
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    goto :goto_0

    .line 686
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 687
    new-instance v3, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 688
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 689
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v3, p2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->semTryShowAtLocation(Landroid/view/View;)Z

    .line 691
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 692
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 299
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 293
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 295
    return-void
.end method

.method public setMenuView(Landroid/widget/ActionMenuView;)V
    .locals 2
    .param p1, "menuView"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 982
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 985
    :cond_0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 986
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 987
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 988
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 302
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    if-eqz v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 307
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 309
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 312
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 313
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 290
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 282
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 283
    iput-boolean p2, p0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 285
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 379
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 723
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 726
    .local v0, "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 728
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 732
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 736
    .end local v0    # "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 14
    .param p1, "cleared"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 549
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 550
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 553
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 555
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 557
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v11, :cond_2

    .line 558
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 559
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 560
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 561
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v8

    .line 562
    .local v8, "provider":Landroid/view/ActionProvider;
    if-eqz v8, :cond_1

    .line 563
    invoke-virtual {v8, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 560
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Landroid/view/ActionProvider;
    :cond_2
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v11, :cond_a

    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 571
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 572
    .local v2, "hasOverflow":Z
    iget-boolean v11, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v11, :cond_3

    if-eqz v6, :cond_3

    .line 573
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 574
    .restart local v1    # "count":I
    if-ne v1, v12, :cond_c

    .line 575
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v11

    if-nez v11, :cond_b

    move v2, v12

    .line 581
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_f

    .line 582
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v11, :cond_4

    .line 583
    iget-boolean v11, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v11, :cond_e

    .line 584
    new-instance v11, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    iget-object v12, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 589
    :cond_4
    :goto_3
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 590
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v7, v11, :cond_6

    .line 591
    if-eqz v7, :cond_5

    .line 592
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 594
    :cond_5
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v4, Landroid/widget/ActionMenuView;

    .line 595
    .local v4, "menuView":Landroid/widget/ActionMenuView;
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v10

    .line 599
    .local v10, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v10, :cond_6

    .line 600
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v9

    .line 601
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_6

    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutDirection()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutDirection(I)V

    .line 613
    .end local v4    # "menuView":Landroid/widget/ActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_6
    :goto_4
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v11, :cond_7

    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v11, v11, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v11, :cond_7

    .line 614
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v4, Landroid/widget/ActionMenuView;

    .line 615
    .restart local v4    # "menuView":Landroid/widget/ActionMenuView;
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v11, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->semGetSumOfDigitsInBadges()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->semSetBadgeNumber(I)V

    .line 620
    .end local v4    # "menuView":Landroid/widget/ActionMenuView;
    :cond_7
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 621
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 625
    :cond_9
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/widget/ActionMenuView;

    iget-boolean v12, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v11, v12}, Landroid/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 626
    return-void

    .line 568
    .end local v2    # "hasOverflow":Z
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_b
    move v2, v13

    .line 575
    goto/16 :goto_2

    .line 577
    :cond_c
    if-lez v1, :cond_d

    move v2, v12

    :goto_5
    goto/16 :goto_2

    :cond_d
    move v2, v13

    goto :goto_5

    .line 586
    .end local v1    # "count":I
    :cond_e
    new-instance v11, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v12, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto/16 :goto_3

    .line 605
    :cond_f
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v11, :cond_6

    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v11, v12, :cond_6

    .line 606
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 607
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 608
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    goto :goto_4
.end method
