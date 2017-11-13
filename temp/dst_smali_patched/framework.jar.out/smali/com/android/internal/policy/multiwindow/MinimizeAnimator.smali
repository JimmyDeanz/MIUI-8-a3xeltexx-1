.class public Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;,
        Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;,
        Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;,
        Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static DEBUG_MINIMIZE_REMOVE_ANIM:Z = false

.field private static final DRAG_AND_DROP_TIMER_TIME:I = 0x2bc

.field private static final MESSAGE_REQUEST_MAXIMIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MinimizeAnimator"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnimating:Z

.field private mAnimationCancelByMaximize:Z

.field private mContentRootContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDocking:Lcom/android/internal/policy/multiwindow/Docking;

.field private mDragMode:Z

.field private mDssScale:F

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mInitPositionX:I

.field private mInitPositionY:I

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mIsMoving:Z

.field private mIsSupportSimplificationUI:Z

.field private mIsTouchDown:Z

.field private mLastPositionX:F

.field private mLastPositionY:F

.field private mLastRotation:I

.field private mMinimizedIcon:Landroid/view/View;

.field private final mMinimizedIconDefaultSize:I

.field private mMinimizedIconHeight:I

.field private mMinimizedIconWidth:I

.field private mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

.field private mMoveInterval:I

.field private final mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mReadyToShow:Z

.field private mRemoveLayoutHeight:I

.field private mStatusBarHeight:I

.field private mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

.field private mToken:Landroid/os/IBinder;

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

.field private mUsingSelectiveOrientation:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    sput-boolean v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/MultiPhoneWindow;F)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "multiPhoneWindow"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p3, "dssScale"    # F

    .prologue
    const v3, 0x1050302

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mUsingSelectiveOrientation:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDragMode:Z

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMoveInterval:I

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownX:F

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownY:F

    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimating:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastRotation:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    new-instance v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$2;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {p2}, Lcom/android/internal/policy/MultiPhoneWindow;->getDockingInstance()Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I

    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    new-instance v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/MultiPhoneWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setTouchableRegion(Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->adjustMinimizedBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimating:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownX:F

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownX:F

    return p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownY:F

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownY:F

    return p1
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Point;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMoveInterval:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMoveInterval:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->hide()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->isOutOfDisplay(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDragMode:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mUsingSelectiveOrientation:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mUsingSelectiveOrientation:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionX:I

    return v0
.end method

.method private addWindow()Landroid/view/Window;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isWindowAdded()Z

    move-result v6

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MinimizeAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip add MinimizeAnimator Window, DecorWindow is not added, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v3, v5

    :goto_0
    return-object v3

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "MinimizeAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MinimizeAnimator::addWindow(), MinimizeAnimator already has mWindow, mWindow should be recreated, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    :cond_3
    sget-boolean v6, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v6, :cond_4

    :cond_4
    invoke-direct {p0, v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .local v4, "newWindowAttributes":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .local v3, "newWindow":Landroid/view/Window;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v3, v6, v5, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .local v2, "newDecor":Landroid/view/View;
    new-instance v5, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContentRootContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "content":Landroid/view/View;
    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "content":Landroid/view/View;
    :cond_5
    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContentRootContainer:Landroid/view/ViewGroup;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private adjustMinimizedBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 10
    .param p1, "stackBound"    # Landroid/graphics/Rect;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .local v2, "outOfBound":Z
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .local v4, "screenSize":Landroid/graphics/Point;
    invoke-direct {p0, v4}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .local v1, "left":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .local v5, "top":I
    iget v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    add-int v3, v1, v6

    .local v3, "right":I
    iget v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    add-int v0, v5, v6

    .local v0, "bottom":I
    invoke-virtual {p2, v1, v5, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    if-gez v1, :cond_3

    iget v6, p2, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    iget v6, v4, Landroid/graphics/Point;->y:I

    if-le v0, v6, :cond_4

    iget v6, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-virtual {p2, v9, v6}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    :cond_1
    :goto_1
    sget-boolean v6, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "MinimizeAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustMinimizedBoundary StackBound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OutBound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    iget v6, v4, Landroid/graphics/Point;->x:I

    if-le v3, v6, :cond_0

    iget v6, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v3

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    if-ge v5, v6, :cond_1

    iget v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-virtual {p2, v9, v6}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 5
    .param p1, "showTrash"    # Z

    .prologue
    const/4 v4, -0x1

    sget-boolean v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v2, :cond_0

    :cond_0
    const/4 v1, 0x2

    .local v1, "windowType":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1000528

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v2, v2, 0x609

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MinimizeAnimator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    return-object v0
.end method

.method private getDisplaySize(Landroid/graphics/Point;)Z
    .locals 6
    .param p1, "outbound"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :goto_0
    return v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private getScreenRotation()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/view/DisplayInfo;->rotation:I

    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    goto :goto_0
.end method

.method private hide()V
    .locals 3

    .prologue
    sget-boolean v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MinimizeAnimator"

    const-string v2, "hide"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .end local v0    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method private isOutOfDisplay(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "ds":Landroid/graphics/Point;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z

    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v0, "dis":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method private makeAnimation(FF)Landroid/view/animation/AnimationSet;
    .locals 11
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .prologue
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v10
.end method

.method private makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "thumbnail"    # Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->addWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    if-nez p1, :cond_7

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    if-nez p2, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->isUsedTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .local v0, "personaManager":Landroid/os/PersonaManager;
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "multiwindow"

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/os/PersonaManager;->getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    .local v8, "initPosition":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getRotationOfStackBound()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastRotation:I

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionX:I

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    iget v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    if-ge v1, v2, :cond_4

    iget v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    iget v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->resetResolvedLayoutDirection()V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->show()V

    iget v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v9, v1, v2

    .local v9, "pivotX":F
    iget v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v10, v1, v2

    .local v10, "pivotY":F
    invoke-direct {p0, v9, v10}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeAnimation(FF)Landroid/view/animation/AnimationSet;

    move-result-object v6

    .local v6, "a":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    sget-boolean v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeMinimizeIconWindow componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeMinimizeIconWindow StackBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " X="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pivotX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pivotY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v8    # "initPosition":Landroid/graphics/Rect;
    .end local v9    # "pivotX":F
    .end local v10    # "pivotY":F
    :cond_5
    iput-object p2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    goto/16 :goto_3
.end method

.method private setTouchableRegion(Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "delayedTime"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTouchableRegion() touchableRegion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delaytedTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, p1

    .local v0, "touchableRegion":Landroid/graphics/Rect;
    if-lez p2, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;)V

    int-to-long v4, p2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method private show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MinimizeAnimator"

    const-string v3, "show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .end local v0    # "displaySize":Landroid/graphics/Point;
    .end local v1    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method private updateRotationChanged(Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getScreenRotation()I

    move-result v2

    .local v2, "currentRotation":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastRotation:I

    sub-int v3, v2, v13

    .local v3, "delta":I
    if-gez v3, :cond_0

    add-int/lit8 v3, v3, 0x4

    :cond_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastRotation:I

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .local v9, "screenSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z

    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v9, Landroid/graphics/Point;->x:I

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v6, "displaySize":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    float-to-int v8, v13

    .local v8, "left":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    float-to-int v10, v13

    .local v10, "top":I
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    add-int/2addr v14, v10

    invoke-direct {v7, v8, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v7, "lastMinimizedBound":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "currentMinimizedBound":Landroid/graphics/Rect;
    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    if-eqz v13, :cond_1

    const-string v13, "MinimizeAnimator"

    const-string v14, "updateRotationChanged : ready to show"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setY(F)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setTouchableRegion(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v14, v14

    sub-float v4, v13, v14

    .local v4, "diffX":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    sub-float v5, v13, v14

    .local v5, "diffY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    float-to-int v14, v4

    float-to-int v15, v5

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/internal/policy/MultiPhoneWindow;->moveStackBound(IIZ)Z

    sget-boolean v13, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v13, :cond_2

    const-string v13, "MinimizeAnimator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateRotationChanged rotation="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Minimized Bound="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .end local v4    # "diffX":F
    .end local v5    # "diffY":F
    :pswitch_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    add-int v11, v13, v14

    .local v11, "x":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    div-int/lit8 v14, v14, 0x2

    sub-int v12, v13, v14

    .local v12, "y":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    if-ge v12, v13, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    add-int/2addr v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    add-int/2addr v14, v12

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .end local v11    # "x":I
    .end local v12    # "y":I
    :pswitch_1
    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    iget v14, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->top:I

    iget v13, v7, Landroid/graphics/Rect;->top:I

    iput v13, v1, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_2
    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->top:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_3
    iget v13, v7, Landroid/graphics/Rect;->left:I

    iput v13, v1, Landroid/graphics/Rect;->top:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public isMinimizeIconVisible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeMinimizeIconWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    return-void
.end method

.method public makeMinimizeIconWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    return-void
.end method

.method public makeMinimizeIconWindow(Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V
    .locals 1
    .param p1, "thumbnail"    # Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    return-void
.end method

.method public removeWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow(Z)V

    return-void
.end method

.method public removeWindow(Z)V
    .locals 5
    .param p1, "immediate"    # Z

    .prologue
    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWindow mWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", immediate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->hide()V

    :cond_1
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :goto_0
    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    .end local v0    # "decorView":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v1, :cond_4

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    :cond_4
    return-void

    .restart local v0    # "decorView":Landroid/view/View;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setDragAndDropMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDragMode:Z

    return-void
.end method

.method public updateMultiWindowConfigurationChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMultiWindowStyleChanged StackBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->hideTrash()V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateRotationChanged(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
