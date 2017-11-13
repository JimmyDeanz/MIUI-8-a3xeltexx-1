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
    .line 78
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    sput-boolean v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    .line 79
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

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mUsingSelectiveOrientation:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDragMode:Z

    .line 88
    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    .line 89
    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    .line 91
    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    .line 92
    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    .line 102
    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    .line 103
    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    .line 104
    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    .line 108
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F

    .line 109
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F

    .line 110
    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMoveInterval:I

    .line 111
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownX:F

    .line 112
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownY:F

    .line 113
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimating:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastRotation:I

    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    .line 125
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;

    .line 126
    new-instance v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 140
    new-instance v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$2;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    .line 153
    iput p3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    .line 158
    iput-object p2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    .line 159
    invoke-virtual {p2}, Lcom/android/internal/policy/MultiPhoneWindow;->getDockingInstance()Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I

    .line 169
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    .line 173
    new-instance v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/MultiPhoneWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setTouchableRegion(Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->adjustMinimizedBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimating:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsMoving:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionX:F

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastPositionY:F

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownX:F

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownX:F

    return p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownY:F

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mFirstDownY:F

    return p1
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Point;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMoveInterval:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMoveInterval:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->hide()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->isOutOfDisplay(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDragMode:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mUsingSelectiveOrientation:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mUsingSelectiveOrientation:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionX:I

    return v0
.end method

.method private addWindow()Landroid/view/Window;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 309
    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isWindowAdded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 310
    sget-boolean v6, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 311
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

    .line 343
    :goto_0
    return-object v3

    .line 315
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v6, :cond_3

    .line 316
    sget-boolean v6, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 317
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

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 322
    :cond_3
    sget-boolean v6, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 326
    :cond_4
    invoke-direct {p0, v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 327
    .local v4, "newWindowAttributes":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 328
    .local v3, "newWindow":Landroid/view/Window;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 329
    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v3, v6, v5, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 330
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 332
    .local v2, "newDecor":Landroid/view/View;
    new-instance v5, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    move-object v5, v2

    .line 334
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "content":Landroid/view/View;
    move-object v5, v2

    .line 335
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 336
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "content":Landroid/view/View;
    :cond_5
    move-object v5, v2

    .line 338
    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContentRootContainer:Landroid/view/ViewGroup;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutDirection(I)V

    .line 341
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

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "outOfBound":Z
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 799
    .local v4, "screenSize":Landroid/graphics/Point;
    invoke-direct {p0, v4}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 801
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 802
    .local v1, "left":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 804
    .local v5, "top":I
    iget v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    add-int v3, v1, v6

    .line 805
    .local v3, "right":I
    iget v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    add-int v0, v5, v6

    .line 806
    .local v0, "bottom":I
    invoke-virtual {p2, v1, v5, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 808
    if-gez v1, :cond_3

    .line 809
    iget v6, p2, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 810
    const/4 v2, 0x1

    .line 816
    :cond_0
    :goto_0
    iget v6, v4, Landroid/graphics/Point;->y:I

    if-le v0, v6, :cond_4

    .line 817
    iget v6, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-virtual {p2, v9, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 818
    const/4 v2, 0x1

    .line 823
    :cond_1
    :goto_1
    sget-boolean v6, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 824
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

    .line 826
    :cond_2
    return v2

    .line 811
    :cond_3
    iget v6, v4, Landroid/graphics/Point;->x:I

    if-le v3, v6, :cond_0

    .line 812
    iget v6, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v3

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 813
    const/4 v2, 0x1

    goto :goto_0

    .line 819
    :cond_4
    iget v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    if-ge v5, v6, :cond_1

    .line 820
    iget v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-virtual {p2, v9, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 821
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 5
    .param p1, "showTrash"    # Z

    .prologue
    const/4 v4, -0x1

    .line 421
    sget-boolean v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 425
    :cond_0
    const/4 v1, 0x2

    .line 428
    .local v1, "windowType":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1000528

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 434
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 435
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 437
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v2, v2, 0x609

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 442
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 443
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 446
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

    .line 447
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 448
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 449
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 450
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 452
    return-object v0
.end method

.method private getDisplaySize(Landroid/graphics/Point;)Z
    .locals 6
    .param p1, "outbound"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 507
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 508
    .local v0, "display":Landroid/view/Display;
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v5, :cond_0

    .line 509
    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 510
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 511
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 512
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    .line 513
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 514
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 524
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :goto_0
    return v3

    .line 519
    :cond_0
    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 524
    goto :goto_0
.end method

.method private getScreenRotation()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 528
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 529
    .local v0, "display":Landroid/view/Display;
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_1

    .line 530
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 531
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_1

    .line 532
    iget v2, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 540
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    :goto_0
    return v2

    .line 536
    :cond_1
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    goto :goto_0
.end method

.method private hide()V
    .locals 3

    .prologue
    .line 409
    sget-boolean v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 410
    const-string v1, "MinimizeAnimator"

    const-string v2, "hide"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 415
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 416
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .end local v0    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method private isOutOfDisplay(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 790
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 791
    .local v1, "ds":Landroid/graphics/Point;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 792
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 793
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
    .line 456
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 458
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

    .line 459
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 460
    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 461
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 463
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 464
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 465
    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 466
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 468
    return-object v10
.end method

.method private makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "thumbnail"    # Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->addWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    .line 199
    if-nez p1, :cond_7

    .line 200
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    .line 201
    iget v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    .line 202
    if-nez p2, :cond_5

    .line 203
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 208
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->isUsedTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 214
    .local v0, "personaManager":Landroid/os/PersonaManager;
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string/jumbo v3, "multiwindow"

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/os/PersonaManager;->getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 219
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    if-nez v1, :cond_3

    .line 229
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 236
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    .line 237
    .local v8, "initPosition":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getRotationOfStackBound()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastRotation:I

    .line 240
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

    .line 241
    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDssScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    .line 247
    iget v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    if-ge v1, v2, :cond_4

    .line 248
    iget v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    iget v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 258
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->show()V

    .line 260
    iget v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v9, v1, v2

    .line 261
    .local v9, "pivotX":F
    iget v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v10, v1, v2

    .line 263
    .local v10, "pivotY":F
    invoke-direct {p0, v9, v10}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeAnimation(FF)Landroid/view/animation/AnimationSet;

    move-result-object v6

    .line 264
    .local v6, "a":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 302
    sget-boolean v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 303
    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeMinimizeIconWindow componentName="

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

    .line 304
    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeMinimizeIconWindow StackBound="

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

    .line 205
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v8    # "initPosition":Landroid/graphics/Rect;
    .end local v9    # "pivotX":F
    .end local v10    # "pivotY":F
    :cond_5
    iput-object p2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    goto/16 :goto_1

    .line 216
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 222
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    .line 225
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    goto/16 :goto_3
.end method

.method private setTouchableRegion(Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "delayedTime"    # I

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    if-nez v1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 476
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 477
    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTouchableRegion() touchableRegion="

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

    .line 480
    :cond_1
    move-object v0, p1

    .line 482
    .local v0, "touchableRegion":Landroid/graphics/Rect;
    if-lez p2, :cond_2

    .line 483
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;)V

    int-to-long v4, p2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 501
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 502
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method private show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 391
    sget-boolean v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 392
    const-string v2, "MinimizeAnimator"

    const-string/jumbo v3, "show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 396
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 397
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 398
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 399
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 400
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 401
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 402
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    .end local v0    # "displaySize":Landroid/graphics/Point;
    .end local v1    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method private updateRotationChanged(Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 830
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getScreenRotation()I

    move-result v2

    .line 831
    .local v2, "currentRotation":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastRotation:I

    sub-int v3, v2, v13

    .line 832
    .local v3, "delta":I
    if-gez v3, :cond_0

    .line 833
    add-int/lit8 v3, v3, 0x4

    .line 835
    :cond_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mLastRotation:I

    .line 837
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 838
    .local v9, "screenSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 839
    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v9, Landroid/graphics/Point;->x:I

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 840
    .local v6, "displaySize":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    float-to-int v8, v13

    .line 841
    .local v8, "left":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    float-to-int v10, v13

    .line 842
    .local v10, "top":I
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    add-int/2addr v14, v10

    invoke-direct {v7, v8, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 843
    .local v7, "lastMinimizedBound":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 845
    .local v1, "currentMinimizedBound":Landroid/graphics/Rect;
    packed-switch v3, :pswitch_data_0

    .line 884
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    if-eqz v13, :cond_1

    .line 885
    const-string v13, "MinimizeAnimator"

    const-string/jumbo v14, "updateRotationChanged : ready to show"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z

    .line 888
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setX(F)V

    .line 889
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setY(F)V

    .line 890
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setTouchableRegion(Landroid/graphics/Rect;I)V

    .line 892
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

    .line 893
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

    .line 894
    .local v5, "diffY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    float-to-int v14, v4

    float-to-int v15, v5

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/internal/policy/MultiPhoneWindow;->moveStackBound(IIZ)Z

    .line 896
    sget-boolean v13, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v13, :cond_2

    .line 897
    const-string v13, "MinimizeAnimator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateRotationChanged rotation="

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

    .line 899
    :cond_2
    return-void

    .line 850
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

    .line 852
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

    .line 859
    .local v12, "y":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    if-ge v12, v13, :cond_3

    .line 860
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I

    .line 862
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I

    add-int/2addr v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I

    add-int/2addr v14, v12

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 865
    .end local v11    # "x":I
    .end local v12    # "y":I
    :pswitch_1
    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    iget v14, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->top:I

    .line 866
    iget v13, v7, Landroid/graphics/Rect;->top:I

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 867
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->right:I

    .line 868
    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 871
    :pswitch_2
    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->top:I

    .line 872
    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 873
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->right:I

    .line 874
    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 877
    :pswitch_3
    iget v13, v7, Landroid/graphics/Rect;->left:I

    iput v13, v1, Landroid/graphics/Rect;->top:I

    .line 878
    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 879
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->right:I

    .line 880
    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 845
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
    .line 387
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

    .line 188
    invoke-direct {p0, v0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    .line 189
    return-void
.end method

.method public makeMinimizeIconWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    .line 179
    return-void
.end method

.method public makeMinimizeIconWindow(Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V
    .locals 1
    .param p1, "thumbnail"    # Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    .line 184
    return-void
.end method

.method public removeWindow()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow(Z)V

    .line 349
    return-void
.end method

.method public removeWindow(Z)V
    .locals 5
    .param p1, "immediate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 353
    sget-boolean v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 354
    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeWindow mWindow="

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

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->hide()V

    .line 363
    :cond_1
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 364
    if-eqz p1, :cond_5

    .line 365
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 370
    :goto_0
    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    .line 373
    .end local v0    # "decorView":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 374
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 376
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 377
    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v1, :cond_4

    .line 381
    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 383
    :cond_4
    return-void

    .line 367
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
    .line 926
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDragMode:Z

    .line 927
    return-void
.end method

.method public updateMultiWindowConfigurationChanged()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    if-nez v0, :cond_0

    .line 907
    :cond_0
    return-void
.end method

.method public updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 911
    sget-boolean v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 912
    const-string v0, "MinimizeAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMultiWindowStyleChanged StackBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;

    if-nez v0, :cond_1

    .line 923
    :goto_0
    return-void

    .line 917
    :cond_1
    if-nez p1, :cond_2

    .line 918
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow(Z)V

    goto :goto_0

    .line 920
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->hideTrash()V

    .line 921
    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateRotationChanged(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
