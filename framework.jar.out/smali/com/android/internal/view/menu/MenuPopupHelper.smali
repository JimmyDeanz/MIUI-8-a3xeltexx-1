.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x10900bf

.field static final SEM_CHECKED_ITEM_LAYOUT:I = 0x1090132

.field static final SEM_ITEM_LAYOUT:I = 0x1090133


# instance fields
.field private final mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsParentThemeDeviceDefault:Z

.field private mIsParentThemeDeviceDefaultLight:Z

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field public mPopupWindowLayout:I

.field private mPositionAnchorView:Landroid/view/View;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v4, 0x0

    .line 96
    const/4 v3, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 100
    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .prologue
    .line 105
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 91
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPositionAnchorView:Landroid/view/View;

    .line 92
    iput v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupWindowLayout:I

    .line 110
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 112
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 113
    new-instance v3, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 114
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 115
    iput p5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 116
    iput p6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 119
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    const v6, 0x105000e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 122
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 125
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 128
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 129
    .local v1, "outValue":Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 130
    .local v0, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v6, 0x11600bd

    invoke-virtual {v3, v6, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v6, 0x11600bf

    invoke-virtual {v3, v6, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 132
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsParentThemeDeviceDefault:Z

    .line 133
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-nez v3, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsParentThemeDeviceDefaultLight:Z

    .line 135
    return-void

    :cond_0
    move v3, v5

    .line 132
    goto :goto_0

    :cond_1
    move v4, v5

    .line 133
    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->semIsPopupMenuDisplay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isSupportOverlapSubMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private getScreenWidth()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private getSubPopupGravity()I
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method private isSplitTypeMultiWindow()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportOverlapSubMenu()Z
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsParentThemeDeviceDefaultLight:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureContentWidth()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 445
    const/4 v7, 0x0

    .line 446
    .local v7, "maxWidth":I
    const/4 v5, 0x0

    .line 447
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 449
    .local v4, "itemType":I
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 450
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 451
    .local v9, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 452
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 453
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 454
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 455
    .local v8, "positionType":I
    if-eq v8, v4, :cond_0

    .line 456
    move v4, v8

    .line 457
    const/4 v5, 0x0

    .line 460
    :cond_0
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v10, :cond_1

    .line 461
    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 464
    :cond_1
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 465
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 467
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 468
    .local v6, "itemWidth":I
    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    if-lt v6, v10, :cond_3

    .line 469
    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 475
    .end local v6    # "itemWidth":I
    .end local v7    # "maxWidth":I
    .end local v8    # "positionType":I
    :cond_2
    return v7

    .line 470
    .restart local v6    # "itemWidth":I
    .restart local v7    # "maxWidth":I
    .restart local v8    # "positionType":I
    :cond_3
    if-le v6, v7, :cond_4

    .line 471
    move v7, v6

    .line 453
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private semIsPopupMenuDisplay()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsParentThemeDeviceDefault:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 402
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 520
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 516
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 605
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 407
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isSupportOverlapSubMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 412
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 415
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 418
    return-void

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 482
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 498
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 484
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsParentThemeDeviceDefaultLight:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPositionAnchorView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 487
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPositionAnchorView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->semTryShowAtLocation(Landroid/view/View;)Z

    goto :goto_0

    .line 489
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v1, :cond_4

    .line 490
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 491
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 492
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 494
    :cond_4
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 426
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 427
    .local v0, "adapter":Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isSupportOverlapSubMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->semPerformItemAction(Landroid/view/View;Landroid/view/MenuItem;I)Z

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 436
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 635
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 539
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 540
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 541
    .local v4, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 543
    const/4 v3, 0x0

    .line 544
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 545
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 546
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 547
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 548
    const/4 v3, 0x1

    .line 552
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 554
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v5

    if-nez v5, :cond_3

    .line 555
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 556
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 558
    :cond_1
    const/4 v5, 0x1

    .line 561
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :goto_1
    return v5

    .line 545
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 502
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 510
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 511
    return-void
.end method

.method public semOnSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isSupportOverlapSubMenu()Z

    move-result v5

    if-nez v5, :cond_0

    .line 571
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v5

    .line 596
    :goto_0
    return v5

    .line 574
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 575
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 576
    .local v4, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 578
    const/4 v3, 0x0

    .line 579
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 580
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 581
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 582
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 583
    const/4 v3, 0x1

    .line 587
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 589
    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/MenuPopupHelper;->semTryShowAtLocation(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 590
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_2

    .line 591
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 593
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 580
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 596
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public semTryShowAtLocation(Landroid/view/View;)Z
    .locals 19
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v15

    .line 361
    :goto_0
    return v15

    .line 277
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v15, :cond_5

    .line 278
    new-instance v15, Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    move/from16 v18, v0

    invoke-direct/range {v15 .. v18}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 279
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 286
    .local v3, "anchor":Landroid/view/View;
    if-eqz v3, :cond_7

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v15, :cond_6

    const/4 v2, 0x1

    .line 288
    .local v2, "addGlobalListener":Z
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 289
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 290
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const v16, 0x800035

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v15

    if-nez v15, :cond_2

    .line 297
    invoke-virtual {v3}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 303
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v15, :cond_3

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 305
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 308
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->semIsPopupMenuDisplay()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x10e00e3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 311
    .local v8, "mItemMaxCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result v15

    if-le v15, v8, :cond_4

    .line 312
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x105017a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 314
    .local v9, "mVisibleMaxHeight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v15, v9}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 318
    .end local v8    # "mItemMaxCount":I
    .end local v9    # "mVisibleMaxHeight":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 321
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupWindowLayout:I

    if-eqz v15, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupWindowLayout:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setWindowLayoutType(I)V

    .line 326
    .end local v2    # "addGlobalListener":Z
    .end local v3    # "anchor":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 327
    .local v12, "res":Landroid/content/res/Resources;
    const v15, 0x105017d

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 328
    .local v5, "hOffset":I
    const v15, 0x105017e

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 331
    .local v4, "anchorVerticalOff":I
    const/4 v15, 0x2

    new-array v6, v15, [I

    .line 332
    .local v6, "locationInWindow":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 333
    const/4 v15, 0x2

    new-array v7, v15, [I

    .line 334
    .local v7, "locationOnScreen":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getScreenWidth()I

    move-result v15

    const/16 v16, 0x0

    aget v16, v6, v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int v10, v15, v5

    .line 346
    .local v10, "positionX":I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isSplitTypeMultiWindow()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    .line 348
    .local v13, "root":Landroid/view/View;
    const/4 v15, 0x2

    new-array v14, v15, [I

    .line 349
    .local v14, "rootLocation":[I
    invoke-virtual {v13, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 350
    const/4 v15, 0x1

    aget v15, v7, v15

    const/16 v16, 0x1

    aget v16, v14, v16

    sub-int v11, v15, v16

    .line 355
    .end local v13    # "root":Landroid/view/View;
    .end local v14    # "rootLocation":[I
    .local v11, "positionY":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    const v17, 0x800035

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v0, v10, v11, v1}, Landroid/widget/ListPopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 358
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/view/menu/MenuPopupHelper;->mPositionAnchorView:Landroid/view/View;

    .line 360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v15}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 361
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 287
    .end local v4    # "anchorVerticalOff":I
    .end local v5    # "hOffset":I
    .end local v6    # "locationInWindow":[I
    .end local v7    # "locationOnScreen":[I
    .end local v10    # "positionX":I
    .end local v11    # "positionY":I
    .end local v12    # "res":Landroid/content/res/Resources;
    .restart local v3    # "anchor":Landroid/view/View;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 300
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 342
    .end local v3    # "anchor":Landroid/view/View;
    .restart local v4    # "anchorVerticalOff":I
    .restart local v5    # "hOffset":I
    .restart local v6    # "locationInWindow":[I
    .restart local v7    # "locationOnScreen":[I
    .restart local v12    # "res":Landroid/content/res/Resources;
    :cond_8
    const/4 v15, 0x0

    aget v15, v6, v15

    add-int v10, v15, v5

    .restart local v10    # "positionX":I
    goto :goto_2

    .line 352
    :cond_9
    const/4 v15, 0x1

    aget v11, v7, v15

    .restart local v11    # "positionY":I
    goto :goto_3
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 139
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 535
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 143
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 147
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 245
    :goto_0
    return v6

    .line 175
    :cond_0
    new-instance v7, Landroid/widget/ListPopupWindow;

    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 176
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 177
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 181
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 182
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_8

    .line 183
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v7, :cond_1

    move v0, v6

    .line 184
    .local v0, "addGlobalListener":Z
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 185
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 186
    :cond_2
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 187
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 188
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 192
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v7

    if-nez v7, :cond_3

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 201
    :cond_3
    iget-boolean v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v7, :cond_4

    .line 202
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v7

    iput v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 203
    iput-boolean v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 207
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->semIsPopupMenuDisplay()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 210
    const/4 v3, 0x0

    .line 211
    .local v3, "isMobileKeyboard":Z
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 213
    .local v2, "conf":Landroid/content/res/Configuration;
    iget v7, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v7, v6, :cond_5

    .line 214
    const/4 v3, 0x1

    .line 217
    :cond_5
    if-eqz v3, :cond_9

    .line 218
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00e4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 220
    .local v4, "mItemMaxCount":I
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105017b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 229
    .local v5, "mVisibleMaxHeight":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result v7

    if-le v7, v4, :cond_6

    .line 230
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 235
    .end local v2    # "conf":Landroid/content/res/Configuration;
    .end local v3    # "isMobileKeyboard":Z
    .end local v4    # "mItemMaxCount":I
    .end local v5    # "mVisibleMaxHeight":I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 236
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 238
    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupWindowLayout:I

    if-eqz v7, :cond_7

    .line 239
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupWindowLayout:I

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setWindowLayoutType(I)V

    .line 243
    :cond_7
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->show()V

    .line 244
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_0

    .end local v0    # "addGlobalListener":Z
    :cond_8
    move v6, v0

    .line 198
    goto/16 :goto_0

    .line 223
    .restart local v0    # "addGlobalListener":Z
    .restart local v2    # "conf":Landroid/content/res/Configuration;
    .restart local v3    # "isMobileKeyboard":Z
    :cond_9
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00e3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 225
    .restart local v4    # "mItemMaxCount":I
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105017a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .restart local v5    # "mVisibleMaxHeight":I
    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 527
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 530
    :cond_0
    return-void
.end method
