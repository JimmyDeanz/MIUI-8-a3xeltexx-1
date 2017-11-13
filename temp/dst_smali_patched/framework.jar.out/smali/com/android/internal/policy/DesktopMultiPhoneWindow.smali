.class public Lcom/android/internal/policy/DesktopMultiPhoneWindow;
.super Lcom/android/internal/policy/MultiPhoneWindow;
.source "DesktopMultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;,
        Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;,
        Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;,
        Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final DEBUG_VIS:Z = false

.field static final TAG:Ljava/lang/String; = "DesktopMultiPhoneWindow"


# instance fields
.field private mDefDesktopSizeRatio:F

.field mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

.field mDesktopNormalWindowHeaderView:Landroid/view/View;

.field mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

.field mDesktopPopupWindowHeaderView:Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

.field private mDesktopResizablePadding:Landroid/graphics/Rect;

.field mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

.field mDesktopSplitWindowHeaderView:Landroid/view/View;

.field private mIsDesktopTouchBlocked:Z

.field private mIsDesktopViewBlocked:Z

.field private mIsMultiWindowBlocked:Z

.field private mMaxDesktopSelectiveSizeRatio:F

.field private mMaxDesktopSizeRatio:F

.field private mMinDesktopSizeRatio:F

.field private mScreenContext:Landroid/content/Context;

.field mWindowHeaderFocusedColor:I

.field mWindowHeaderHeight:I

.field mWindowHeaderUnFocusedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderHeight:I

    iput v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinDesktopSizeRatio:F

    iput v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDefDesktopSizeRatio:F

    iput v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSizeRatio:F

    iput v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSelectiveSizeRatio:F

    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopViewBlocked:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsMultiWindowBlocked:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopTouchBlocked:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->initResourceDT()V

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->updateDesktopViewBlocked(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    new-instance v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopTouchBlocked:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopViewBlocked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsMultiWindowBlocked:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDefDesktopSizeRatio:F

    return v0
.end method

.method private getResizalbePaddingRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private installDesktopWindowHeader()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, -0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x109004f

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v1, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "content":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "content":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    new-instance v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;I)V

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->generateWindowHeaderView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeaderView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v10, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .local v6, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v2, "decorView":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeaderView:Landroid/view/View;

    invoke-virtual {v2, v8, v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->bringToFront()V

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeaderView:Landroid/view/View;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v8, v11}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    :cond_1
    new-instance v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;I)V

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->generateWindowHeaderView()Landroid/view/View;

    move-result-object v7

    .local v7, "windowHeader":Landroid/view/View;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mWindowHeaderHeight:I

    invoke-direct {v5, v10, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v7, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    iput-object v7, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeaderView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeaderView:Landroid/view/View;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v8, v11}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    :cond_2
    new-instance v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/4 v9, 0x2

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;I)V

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    new-instance v8, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeaderView:Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeaderView:Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->generateWindowHeaderView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateDesktopViewBlocked(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsDesktopViewBlocked:Z

    sget-boolean v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DesktopMultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DesktopView is blocked, pacakge="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method adjustStackBound(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v0, v3, 0x3

    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v1, v3, 0x3

    .local v1, "boundaryY":I
    iget-boolean v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050305

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .local v2, "maxSize":Landroid/graphics/Point;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_4

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_3
    :goto_1
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_5

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v3, v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v0

    .local v0, "ret":Landroid/view/ViewGroup;
    return-object v0
.end method

.method generatePenWindowLayout()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->generatePenWindowLayout()V

    return-void
.end method

.method public getProperContextDT()Landroid/content/Context;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getStackBoundForDesktopMode()Landroid/graphics/Rect;
    .locals 3

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v0, "tempRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v2}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_0
    return-object v0
.end method

.method initResourceDT()V
    .locals 0

    .prologue
    return-void
.end method

.method isDesktopMode()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .locals 23
    .param p1, "configDiff"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->updateMinMaxSize()V

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_1

    new-instance v17, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v17, "tmpBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/policy/multiwindow/Border;->setDesktopMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mHasStackFocus:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestLayout()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->invalidate()V

    .end local v17    # "tmpBounds":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v19

    if-nez v19, :cond_4

    invoke-super/range {p0 .. p1}, Lcom/android/internal/policy/MultiPhoneWindow;->onMultiWindowConfigurationChanged(I)V

    :cond_2
    :goto_1
    return-void

    .restart local v17    # "tmpBounds":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showMinimizedIconWindow()V

    goto :goto_0

    .end local v17    # "tmpBounds":Landroid/graphics/Rect;
    :cond_4
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v7

    .local v7, "mwState":I
    sget-boolean v19, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v19, :cond_5

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v7, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v10

    .local v10, "preferredOrientation":I
    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFixedOrientation(I)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_1

    .end local v10    # "preferredOrientation":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .local v9, "oldRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .local v8, "newRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastOrientation:I

    sget-boolean v19, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v19, :cond_6

    const-string v20, "DesktopMultiPhoneWindow"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMultiWindowConfigurationChanged "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    if-eqz v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "oldRect="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getRotation()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isRotated(I)Z

    move-result v15

    .local v15, "rotated":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastRotated:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v15, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v19

    if-eqz v19, :cond_7

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v7, v0, :cond_2

    :cond_7
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mLastRotated:Z

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v7, v0, :cond_8

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v7, v0, :cond_b

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowConfigurationChanged()V

    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    goto/16 :goto_1

    .end local v15    # "rotated":Z
    :cond_a
    const-string v19, ""

    goto/16 :goto_2

    .restart local v15    # "rotated":Z
    :cond_b
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :pswitch_1
    const/4 v11, 0x0

    .local v11, "relativeL":F
    const/4 v13, 0x0

    .local v13, "relativeT":F
    const/4 v12, 0x0

    .local v12, "relativeR":F
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .local v6, "maxSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    .local v14, "requestOrientation":I
    if-eqz v14, :cond_c

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_11

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    const/high16 v20, 0x400000

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v18

    .local v18, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v18, :cond_d

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v19

    if-eqz v19, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v19

    if-nez v19, :cond_2

    :cond_e
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v11, v19, v20

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v12, v19, v20

    const/16 v19, 0x0

    cmpl-float v19, v12, v19

    if-lez v19, :cond_f

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v20

    sub-int v19, v19, v20

    if-lez v19, :cond_f

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    mul-float v19, v19, v11

    add-float v20, v11, v12

    div-float v11, v19, v20

    :cond_f
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v13, v19, v20

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3851b717    # 5.0E-5f

    add-float v20, v20, v11

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3851b717    # 5.0E-5f

    add-float v21, v21, v13

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .end local v18    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_3
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v7, v0, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->adjustScaleFactor()V

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v7, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    goto/16 :goto_1

    :cond_11
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "newRect":Landroid/graphics/Rect;
    goto :goto_3

    .end local v6    # "maxSize":Landroid/graphics/Point;
    .end local v11    # "relativeL":F
    .end local v12    # "relativeR":F
    .end local v13    # "relativeT":F
    .end local v14    # "requestOrientation":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->initStackBound()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .local v16, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    const/4 v4, 0x0

    .local v4, "dx":I
    const/4 v5, 0x0

    .local v5, "dy":I
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    if-gez v19, :cond_16

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v4, v0

    :cond_12
    :goto_4
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    :cond_13
    :goto_5
    if-nez v4, :cond_14

    if-eqz v5, :cond_15

    :cond_14
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_16
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v4, v19, v20

    goto :goto_4

    :cond_17
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 12
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/MultiPhoneWindow;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v6, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v6, :cond_2

    const-string v6, "DesktopMultiPhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMultiWindowStyleChanged, reason=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newStyle"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oldStyle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mActivity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopNormalWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    :cond_3
    and-int/lit8 v6, p2, 0x20

    if-eqz v6, :cond_4

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->requestState(I)V

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_a

    const/high16 v4, 0x20000

    invoke-virtual {p1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v4, v11, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v1

    .local v1, "state":I
    if-eq v1, v9, :cond_0

    if-eq v1, v11, :cond_8

    const/4 v4, 0x3

    if-ne v1, v4, :cond_9

    :cond_8
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne v1, v5, :cond_0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    goto/16 :goto_0

    .end local v1    # "state":I
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_a
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeaderView:Landroid/view/View;

    if-eqz v6, :cond_b

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_11

    move v3, v4

    .local v3, "visible":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopSplitWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v6, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    .end local v3    # "visible":I
    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p1, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-eq v6, v7, :cond_12

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-eqz v7, :cond_d

    move v4, v5

    :cond_d
    invoke-interface {v6, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    :cond_e
    :goto_2
    const/4 v0, 0x0

    .local v0, "currStackBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v1

    .restart local v1    # "state":I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v4, :cond_f

    and-int/lit16 v4, p2, 0x100

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    :cond_f
    if-ne v1, v5, :cond_10

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->dismissGuide()V

    goto/16 :goto_0

    .end local v0    # "currStackBounds":Landroid/graphics/Rect;
    .end local v1    # "state":I
    :cond_11
    const/16 v3, 0x8

    goto :goto_1

    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-eq v4, v6, :cond_e

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_2

    .restart local v0    # "currStackBounds":Landroid/graphics/Rect;
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->dismissGuide()V

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    iget-boolean v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->invalidate()V

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->refreshUI(I)V

    goto/16 :goto_0
.end method

.method refreshBorder()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    .local v0, "isDesktop":Z
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {v1}, Lcom/android/internal/policy/multiwindow/Border;->getDesktopMode()Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/multiwindow/Border;->setDesktopMode(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-boolean v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mHasStackFocus:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(ZZ)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/multiwindow/Border;->setDesktopMode(Z)V

    .end local v0    # "isDesktop":Z
    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    return-void
.end method

.method public setMultiWindowBlocked(Z)V
    .locals 3
    .param p1, "blocked"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsMultiWindowBlocked:Z

    if-eq v0, p1, :cond_1

    sget-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "DesktopMultiPhoneWindow"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindow, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v0, "Not-Support"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsMultiWindowBlocked:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "Support"

    goto :goto_0
.end method

.method public shouldMultiWindowBlocked()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showGuideDT(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mHasStackFocus:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v2, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v1, "scaledRect":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDssScale:F

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "scaledRect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method showMinimizedIconWindow()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DesktopMultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMinimizedIconWindow(), remove minimize icon because of desktop mode, caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->showMinimizedIconWindow()V

    goto :goto_0
.end method

.method protected updateIsFullScreen()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateIsFullScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsFullScreen:Z

    if-eq v1, v0, :cond_0

    sget-boolean v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "DesktopMultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh mIsFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsFullScreen:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method updateMinMaxSize()V
    .locals 11

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMinMaxSize()V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .local v2, "displaySize":Landroid/graphics/Point;
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget v3, v2, Landroid/graphics/Point;->x:I

    .local v3, "displayWidth":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .local v1, "displayHeight":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v0, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v9, v0

    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v3, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    move-object v9, v0

    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v1, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    const/4 v4, 0x0

    .local v4, "isSelective":Z
    sget-boolean v9, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v9

    if-eqz v9, :cond_1

    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v1, v2, Landroid/graphics/Point;->x:I

    const/4 v4, 0x1

    :cond_1
    int-to-float v9, v3

    iget v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinDesktopSizeRatio:F

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .local v8, "minWidth":I
    int-to-float v9, v1

    iget v10, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMinDesktopSizeRatio:F

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .local v7, "minHeight":I
    int-to-float v10, v3

    if-eqz v4, :cond_2

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSelectiveSizeRatio:F

    :goto_1
    mul-float/2addr v9, v10

    float-to-int v6, v9

    .local v6, "maxWidth":I
    int-to-float v10, v1

    if-eqz v4, :cond_3

    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSelectiveSizeRatio:F

    :goto_2
    mul-float/2addr v9, v10

    float-to-int v5, v9

    .local v5, "maxHeight":I
    move-object v9, v0

    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v8, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    move-object v9, v0

    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v7, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    move-object v9, v0

    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v6, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iput v5, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    goto :goto_0

    .end local v5    # "maxHeight":I
    .end local v6    # "maxWidth":I
    .restart local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    :cond_2
    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSizeRatio:F

    goto :goto_1

    .restart local v6    # "maxWidth":I
    :cond_3
    iget v9, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMaxDesktopSizeRatio:F

    goto :goto_2
.end method
