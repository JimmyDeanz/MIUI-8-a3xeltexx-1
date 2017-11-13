.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarMainPanel"
.end annotation


# instance fields
.field private MAX_ITEMS_LANDSCAPE_LARGE_PHONE:I

.field private MAX_ITEMS_LANDSCAPE_PHONE:I

.field private MAX_ITEMS_LANDSCAPE_TABLET:I

.field private MAX_ITEMS_PORTRAIT_LARGE_PHONE:I

.field private MAX_ITEMS_PORTRAIT_PHONE:I

.field private MAX_ITEMS_PORTRAIT_TABLET:I

.field private MAX_ITEMS_VERTICAL:I

.field private isClickedOption:Z

.field mCloseButton:Landroid/widget/ImageView;

.field private final mContentView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mExtraItemWidth:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIsTablet:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLinearLayoutArray:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mMenuItemCloseImgSize:I

.field private mMenuItemImgSize:I

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mOpenButton:Landroid/widget/TextView;

.field private final mOpenOverflow:Ljava/lang/Runnable;

.field private mOpenOverflowButton:Landroid/view/View;

.field mOpenedPopupHeight:I

.field private mOptionItemWidth:I

.field private mPopupHeight:I

.field private mPopupMaxHeight:I

.field private mPopupMaxWidth:I

.field private mPopupWidth:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTwContentView:Landroid/view/ViewGroup;

.field private mUseNewSamsungToolbar:Z

.field private mUseSamsungToolbar:Z

.field mVerticalLinearLayout:Landroid/widget/LinearLayout;

.field private final viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openOverflow"    # Ljava/lang/Runnable;

    .prologue
    .line 1349
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    .line 1350
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openOverflow"    # Ljava/lang/Runnable;
    .param p3, "useSamsungToolbar"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1289
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    .line 1292
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 1310
    iput-boolean v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    .line 1311
    iput-boolean v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    .line 1321
    iput-boolean v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mIsTablet:Z

    .line 1340
    iput-boolean v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    .line 1353
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    .line 1354
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    .line 1355
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    .line 1356
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    .line 1358
    iput-boolean p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    .line 1359
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    .line 1360
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    if-eqz v1, :cond_0

    .line 1361
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mIsTablet:Z

    .line 1364
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_PHONE:I

    .line 1365
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_PHONE:I

    .line 1366
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_TABLET:I

    .line 1367
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_TABLET:I

    .line 1369
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_VERTICAL:I

    .line 1371
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    .line 1372
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050254

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemWidth:I

    .line 1373
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105025e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mExtraItemWidth:I

    .line 1374
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOptionItemWidth:I

    .line 1376
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a3b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1377
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDividerWidth:I

    .line 1379
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupWidthLimit()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxHeight:I

    .line 1381
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1382
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1383
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1384
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    .line 1385
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1387
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v1, :cond_1

    .line 1388
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    .line 1389
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1391
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    .line 1392
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1393
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 1396
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050256

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemImgSize:I

    .line 1398
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemCloseImgSize:I

    .line 1411
    .end local v0    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 1401
    .restart local v0    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 1402
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1403
    new-instance v1, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 1404
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1405
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1407
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a41

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemImgSize:I

    .line 1408
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a37

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemCloseImgSize:I

    goto :goto_0
.end method

.method static synthetic access$2000(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 1280
    iput-boolean p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method private getMenuLimit()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1631
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 1632
    .local v0, "isPortrait":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mIsTablet:Z

    if-eqz v1, :cond_2

    .line 1633
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_TABLET:I

    .line 1635
    :goto_1
    return v1

    .line 1631
    .end local v0    # "isPortrait":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1633
    .restart local v0    # "isPortrait":Z
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_TABLET:I

    goto :goto_1

    .line 1635
    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_PHONE:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_PHONE:I

    goto :goto_1
.end method

.method private getMenuLimitVertical()I
    .locals 1

    .prologue
    .line 1646
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_VERTICAL:I

    return v0
.end method

.method private getPopupWidthLimit()I
    .locals 3

    .prologue
    .line 1649
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v0

    .line 1650
    .local v0, "items":I
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDividerWidth:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxWidth:I

    .line 1652
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxWidth:I

    return v1
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 1639
    const-string/jumbo v0, "short"

    const-string/jumbo v1, "ro.build.scafe.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1640
    const/4 v0, 0x1

    .line 1642
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1679
    move-object v0, p1

    .line 1680
    .local v0, "button":Landroid/view/View;
    # invokes: Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    invoke-static {p2}, Lcom/android/internal/widget/FloatingToolbar;->access$2700(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1681
    const v1, 0x1020054

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1683
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1684
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1685
    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeIn(Z)V

    .line 1624
    return-void
.end method

.method public fadeOut(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeOut(Z)V

    .line 1628
    return-void
.end method

.method public getNeedHeightNewPopup()I
    .locals 3

    .prologue
    .line 1697
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupMaxHeight()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getPopupMaxHeight()I
    .locals 2

    .prologue
    .line 1707
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimitVertical()I

    move-result v0

    .line 1708
    .local v0, "items":I
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxHeight:I

    .line 1709
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxHeight:I

    return v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1420
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->layoutMenuItems(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;IZ)Ljava/util/List;
    .locals 32
    .param p2, "width"    # I
    .param p3, "useSamsungToolbar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/widget/FloatingToolbar;->access$2200(Landroid/content/Context;)I

    move-result v26

    sub-int v25, p2, v26

    .line 1429
    .local v25, "toolbarWidth":I
    move/from16 v6, v25

    .line 1430
    .local v6, "availableWidth":I
    new-instance v24, Ljava/util/LinkedList;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1432
    .local v24, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1433
    if-eqz p3, :cond_0

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1435
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/LinkedList;->clear()V

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1445
    :cond_0
    :goto_0
    const/4 v9, 0x1

    .line 1446
    .local v9, "isFirstItem":Z
    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->size()I

    move-result v15

    .line 1447
    .local v15, "mMenuSize":I
    const/4 v14, 0x0

    .line 1448
    .local v14, "mMenuNum":I
    :goto_1
    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_9

    .line 1449
    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/MenuItem;

    .line 1451
    .local v19, "menuItem":Landroid/view/MenuItem;
    if-eqz v9, :cond_2

    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x10407ef

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1453
    .local v22, "moreString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x10407f0

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1454
    .local v8, "closeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1080a3f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1455
    .local v16, "mOpenMenuIconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-interface/range {v19 .. v19}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1456
    .local v11, "mCloseMenuIconDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 1457
    .local v12, "mCloseMenuResizeIconDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 1458
    .local v10, "mCloseMenuIcon":Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 1460
    .local v17, "mResizeCloseMenuIcon":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v27

    sget-object v28, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v26 .. v28}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1461
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1462
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v28

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v29

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1463
    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemCloseImgSize:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemCloseImgSize:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v10, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 1466
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .end local v12    # "mCloseMenuResizeIconDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1468
    .restart local v12    # "mCloseMenuResizeIconDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    .line 1469
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemImgSize:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemImgSize:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v26

    const v27, 0x1090160

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v26

    const v27, 0x109015f

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    sget-object v27, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1500
    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 1501
    const/4 v9, 0x0

    .line 1502
    goto/16 :goto_1

    .line 1441
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "closeString":Ljava/lang/String;
    .end local v9    # "isFirstItem":Z
    .end local v10    # "mCloseMenuIcon":Landroid/graphics/Bitmap;
    .end local v11    # "mCloseMenuIconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "mCloseMenuResizeIconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v14    # "mMenuNum":I
    .end local v15    # "mMenuSize":I
    .end local v16    # "mOpenMenuIconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "mResizeCloseMenuIcon":Landroid/graphics/Bitmap;
    .end local v19    # "menuItem":Landroid/view/MenuItem;
    .end local v22    # "moreString":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/HorizontalScrollView;->removeAllViews()V

    goto/16 :goto_0

    .line 1506
    .restart local v9    # "isFirstItem":Z
    .restart local v14    # "mMenuNum":I
    .restart local v15    # "mMenuSize":I
    .restart local v19    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, p3

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;Z)Landroid/view/View;
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar;->access$2500(Landroid/content/Context;Landroid/view/MenuItem;Z)Landroid/view/View;

    move-result-object v20

    .line 1508
    .local v20, "menuItemButton":Landroid/view/View;
    if-eqz p3, :cond_4

    .line 1509
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 1510
    add-int/lit8 v14, v14, 0x1

    .line 1511
    add-int/lit8 v26, v15, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    div-int v26, v14, v26

    if-eqz v26, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    rem-int v26, v14, v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 1513
    const/4 v13, 0x0

    .line 1514
    .local v13, "mCurLayoutIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v26 .. v27}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/LinkedList;->size()I

    move-result v26

    add-int/lit8 v13, v26, -0x1

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x2

    const/16 v29, -0x2

    invoke-direct/range {v27 .. v29}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    .line 1527
    .end local v13    # "mCurLayoutIndex":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1529
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1530
    .local v23, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1532
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1533
    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .line 1538
    .end local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    if-eqz v9, :cond_5

    .line 1539
    const-wide/high16 v26, 0x3ff8000000000000L    # 1.5

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingStart()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingEnd()I

    move-result v28

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1544
    const/4 v9, 0x0

    .line 1548
    :cond_5
    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 1549
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingStart()I

    move-result v26

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingTop()I

    move-result v27

    const-wide/high16 v28, 0x3ff8000000000000L    # 1.5

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingEnd()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1556
    :cond_6
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1557
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1558
    .local v21, "menuItemButtonWidth":I
    move/from16 v0, v21

    if-gt v0, v6, :cond_7

    .line 1559
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1561
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1562
    .restart local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1563
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1564
    sub-int v6, v6, v21

    .line 1565
    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .line 1567
    .end local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    move-object/from16 v26, v0

    if-nez v26, :cond_8

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v26

    const v27, 0x1090062

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$3;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1580
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1584
    .end local v19    # "menuItem":Landroid/view/MenuItem;
    .end local v20    # "menuItemButton":Landroid/view/View;
    .end local v21    # "menuItemButtonWidth":I
    :cond_9
    if-eqz p3, :cond_a

    .line 1585
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .line 1590
    .local v18, "mScrollViewparams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1593
    add-int/lit8 v26, v15, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    check-cast v26, Landroid/widget/LinearLayout;

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1601
    .restart local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOptionItemWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1602
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1611
    .end local v18    # "mScrollViewparams":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    :goto_2
    return-object v24

    .line 1607
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public measure()Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1661
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1662
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 1664
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    if-eqz v0, :cond_1

    .line 1665
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupWidthLimit()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mExtraItemWidth:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 1666
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 1661
    goto :goto_0

    .line 1666
    :cond_1
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_1
.end method

.method public measureSamsung()Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1671
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 1673
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    if-eqz v0, :cond_0

    .line 1674
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupWidthLimit()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mExtraItemWidth:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 1675
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0
.end method

.method public setAllMenuInNewPopup()V
    .locals 3

    .prologue
    .line 1688
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1689
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1690
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1692
    :cond_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1693
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1692
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1695
    :cond_1
    return-void
.end method

.method public setHeightNewPopup()V
    .locals 3

    .prologue
    .line 1700
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenedPopupHeight:I

    .line 1702
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1703
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1704
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1705
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1616
    return-void
.end method
