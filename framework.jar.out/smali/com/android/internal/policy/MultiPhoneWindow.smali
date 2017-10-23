.class public Lcom/android/internal/policy/MultiPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;,
        Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;,
        Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;,
        Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;,
        Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    }
.end annotation


# static fields
.field private static final ACTION_FLOATING_MINIMIZED:Ljava/lang/String; = "com.samsung.android.intent.action.ACTION_FLOATING_MINIMIZED"

.field static final DEBUG:Z

.field static final DEBUG_FLOATING_BGCOLOR:Z

.field static final DEBUG_FLOATING_CYCLE:Z

.field static final DEBUG_FLOATING_SIZE:Z

.field static final DEBUG_GUIDEVIEW:Z = false

.field public static final DEBUG_MINIMIZE_ANIM:Z

.field static final DEBUG_ORIENTATION:Z

.field static final DEBUG_RESIZE_VISUAL_CUE:Z

.field static final DEBUG_TAB:Z

.field static final LOGGING_REASON_DOCKING:I = 0x1

.field static final STATE_FLOATING:I = 0x2

.field static final STATE_MINIMIZED_FLOATING:I = 0x4

.field static final STATE_NONE:I = -0x1

.field static final STATE_NORMAL:I = 0x1

.field static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"


# instance fields
.field private final NOT_SET:I

.field protected final TEMP_TOAST_HEIGHT:I

.field private badgeIcon:Landroid/graphics/drawable/Drawable;

.field mActivity:Landroid/app/Activity;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBorder:Lcom/android/internal/policy/multiwindow/Border;

.field mContentLayoutGenerated:Z

.field mContentRootContainer:Landroid/view/ViewGroup;

.field mContext:Landroid/content/Context;

.field private mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

.field private mCustomMinimizedView:Landroid/view/View;

.field mDismissGuideByDockingCanceled:Z

.field mDocking:Lcom/android/internal/policy/multiwindow/Docking;

.field private mDragMode:Z

.field mDragModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDrawableController:Landroid/graphics/drawable/Drawable;

.field mDssScale:F

.field private mFloatingFlag:I

.field private mFloatingMenuRightMargin:I

.field private mFocusedViewId:I

.field mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field protected mHScale:F

.field mHandler:Landroid/os/Handler;

.field mHasStackFocus:Z

.field private mHeaderButtonSoundId:I

.field private mInitialFlag:I

.field mIsAttachedToWindow:Z

.field private mIsBorderShown:Z

.field mIsFinishing:Z

.field mIsFullScreen:Z

.field private mIsMinimizeDisabled:Z

.field private mIsMinimizing:Z

.field mIsPenButtonPressed:Z

.field private mIsSecure:Z

.field final mIsSupportDiagonalResizable:Z

.field private final mIsSupportMinimizeAnimation:Z

.field final mIsSupportSimplificationUI:Z

.field mLastHoverIcon:I

.field mLastOrientation:I

.field mLastRotated:Z

.field private mLastStackBound:Landroid/graphics/Rect;

.field mMaxSizeRatio:F

.field private mMinSizeRatio:F

.field mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

.field mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

.field final mPowerManager:Landroid/os/PowerManager;

.field mResizablePadding:Landroid/graphics/Rect;

.field private mRotation:I

.field private mSelectiveSizeRatio:F

.field private mSoundPool:Landroid/media/SoundPool;

.field mStackBound:Landroid/graphics/Rect;

.field mStatusBarHeight:I

.field private mSubWindow:Landroid/view/Window;

.field private mTargetSdkVersion:I

.field private mThickness:I

.field mTitleBarHeight:I

.field mTmpBound:Landroid/graphics/Rect;

.field mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field protected mVScale:F

.field private mVideoCapabilityDialog:Landroid/app/AlertDialog;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    .line 121
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    .line 122
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_SIZE:Z

    .line 123
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_BGCOLOR:Z

    .line 124
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_TAB:Z

    .line 125
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    .line 127
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    .line 128
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 130
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    .line 139
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 144
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 145
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    .line 154
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->NOT_SET:I

    .line 155
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    .line 157
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 162
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    .line 163
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    .line 164
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    .line 175
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    .line 176
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    .line 177
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    .line 183
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    .line 184
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    .line 193
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    .line 194
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    .line 195
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    .line 210
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->TEMP_TOAST_HEIGHT:I

    .line 214
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    .line 217
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    .line 219
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    .line 223
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    .line 224
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    .line 228
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    .line 236
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    .line 237
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    .line 242
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    .line 243
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->userId:I

    .line 245
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    .line 2418
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2419
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .line 2420
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2582
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    .line 2626
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->userId:I

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 265
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getDssScale()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    .line 267
    new-instance v0, Lcom/android/internal/policy/multiwindow/Docking;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/multiwindow/Docking;-><init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;F)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;)V

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initResource()V

    .line 288
    return-void
.end method

.method private StopSmartClipService()V
    .locals 2

    .prologue
    .line 1760
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1761
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.intent.action.ACTION_FLOATING_MINIMIZED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1762
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1763
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDrawableController:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDrawableController:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/MultiPhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    return-object v0
.end method

.method private checkRotationNeeded(I)Z
    .locals 7
    .param p1, "requestedOrientation"    # I

    .prologue
    const/4 v6, -0x1

    .line 1701
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getExpectedOrientation()I

    move-result v1

    .line 1702
    .local v1, "expectedOrientation":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v0

    .line 1703
    .local v0, "expectedExplicitOrientation":I
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v3

    .line 1704
    .local v3, "rotated":Z
    const/4 v4, 0x0

    .line 1705
    .local v4, "rotationNeeded":Z
    if-eq v0, v6, :cond_2

    .line 1706
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    .line 1708
    :cond_1
    const/4 v4, 0x1

    .line 1711
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v2

    .line 1712
    .local v2, "requestedExplicitOrientation":I
    if-nez v4, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v0, :cond_3

    .line 1715
    const/4 v4, 0x0

    .line 1717
    .end local v4    # "rotationNeeded":Z
    :cond_3
    return v4
.end method

.method private dismissWritingBuddy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2385
    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v2, :cond_1

    .line 2397
    :cond_0
    :goto_0
    return-void

    .line 2388
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2389
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2390
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2391
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    .line 2392
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2393
    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    goto :goto_0
.end method

.method private getExplicitOrientation(I)I
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1721
    packed-switch p1, :pswitch_data_0

    .line 1735
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1726
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1732
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1721
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getResizalbePaddingRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1134
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private initFocusedView()V
    .locals 1

    .prologue
    .line 1215
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 1216
    return-void
.end method

.method private initResource()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 1112
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    .line 1113
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v1, :cond_0

    .line 1114
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 1115
    .local v0, "resizePadding":I
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1116
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    .line 1117
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    .line 1119
    .end local v0    # "resizePadding":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    .line 1120
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I

    .line 1121
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportCenterbarClickSound(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1122
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v5, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    .line 1123
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const v3, 0x1100025

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    .line 1128
    :goto_0
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v1, :cond_1

    .line 1129
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    .line 1131
    :cond_1
    return-void

    .line 1125
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    goto :goto_0
.end method

.method private restoreFocusedView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1198
    iget v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    if-eq v1, v3, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1200
    .local v0, "needsFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1203
    :cond_0
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 1205
    .end local v0    # "needsFocus":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private saveFocusedView()V
    .locals 2

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1209
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 1212
    :cond_0
    return-void
.end method

.method private setStackBoundInScreen(IIZ)V
    .locals 7
    .param p1, "leftBoundary"    # I
    .param p2, "topBoundary"    # I
    .param p3, "isMinimizing"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1491
    const/4 v0, 0x0

    .line 1493
    .local v0, "adjustBound":Z
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1494
    .local v2, "screenSize":Landroid/graphics/Point;
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1495
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1497
    .local v1, "currStackBound":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v4, p1, :cond_0

    .line 1498
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1499
    const/4 v0, 0x1

    .line 1501
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, p2, :cond_1

    .line 1502
    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1503
    const/4 v0, 0x1

    .line 1506
    :cond_1
    if-nez p3, :cond_4

    .line 1507
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_2

    .line 1508
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1509
    const/4 v0, 0x1

    .line 1511
    :cond_2
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_3

    .line 1512
    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1513
    const/4 v0, 0x1

    .line 1516
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1517
    .local v3, "tempStackBound":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 1518
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1519
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1520
    const/4 v0, 0x1

    .line 1524
    .end local v3    # "tempStackBound":Landroid/graphics/Rect;
    :cond_4
    if-eqz v0, :cond_5

    .line 1525
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1527
    :cond_5
    return-void
.end method

.method private setStackFocus(Z)V
    .locals 2
    .param p1, "focus"    # Z

    .prologue
    .line 2024
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-ne v0, p1, :cond_0

    .line 2032
    :goto_0
    return-void

    .line 2027
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    .line 2028
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 2029
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Landroid/view/Window;->changeStackFocus(Z)V

    .line 2031
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto :goto_0
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2291
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2292
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 2293
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 2294
    .local v2, "guideOr":I
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 2295
    .local v0, "activityOr":I
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideState()I

    move-result v3

    .line 2296
    .local v3, "guideState":I
    if-ne v2, v6, :cond_0

    if-eq v0, v7, :cond_1

    :cond_0
    if-ne v2, v7, :cond_2

    if-ne v0, v6, :cond_2

    .line 2298
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 2299
    new-instance v5, Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/16 v8, 0x8d4

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    iput-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 2300
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 2301
    sget-boolean v5, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "re-created mGuideView, guideOr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activityOr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    .end local v0    # "activityOr":I
    .end local v2    # "guideOr":I
    .end local v3    # "guideState":I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 2306
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    .line 2309
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 2311
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2312
    .local v4, "scaledRect":Landroid/graphics/Rect;
    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2340
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    .line 2343
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v4    # "scaledRect":Landroid/graphics/Rect;
    :cond_3
    return-void
.end method


# virtual methods
.method adjustScaleFactor()V
    .locals 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1559
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    .line 1560
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    .line 1561
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1562
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1563
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 1564
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 1565
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-lt v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1568
    :cond_2
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 1569
    .local v2, "temp":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 1570
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1574
    .end local v2    # "temp":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    .line 1575
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    .line 1576
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_4

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor mStackBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_4
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_5

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor result hScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",vScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerGlobal;->setMultiWindowScale(FF)V

    .line 1583
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1584
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1585
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    .line 1587
    :cond_6
    return-void
.end method

.method adjustStackBound(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1590
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v0, v4, 0x3

    .line 1591
    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 1592
    .local v1, "boundaryY":I
    const/4 v2, 0x0

    .line 1593
    .local v2, "headerWindowMargin":I
    iget-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v4, :cond_0

    .line 1594
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 1595
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050305

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1596
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 1598
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1599
    .local v3, "maxSize":Landroid/graphics/Point;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1601
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v0

    if-le v4, v5, :cond_3

    .line 1602
    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1607
    :cond_1
    :goto_0
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    if-le v4, v5, :cond_4

    .line 1608
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1612
    :cond_2
    :goto_1
    return-void

    .line 1603
    :cond_3
    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ge v4, v0, :cond_1

    .line 1604
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v0, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 1609
    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_2

    .line 1610
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method public arrangeScaleStackBound()V
    .locals 9

    .prologue
    .line 1648
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1698
    :cond_0
    :goto_0
    return-void

    .line 1652
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->checkRotationNeeded(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1656
    const/4 v0, 0x0

    .line 1657
    .local v0, "bChangedStack":Z
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1659
    .local v4, "stackBound":Landroid/graphics/Rect;
    if-eqz v4, :cond_0

    .line 1660
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    .line 1661
    .local v3, "requestedOrientation":I
    packed-switch v3, :pswitch_data_0

    .line 1680
    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1681
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    .line 1682
    .local v2, "oldRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1683
    .local v1, "newRect":Landroid/graphics/Rect;
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_3

    .line 1686
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1688
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 1690
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1691
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    .line 1692
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1693
    iget-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v5, :cond_0

    .line 1694
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->updatePosition()V

    goto :goto_0

    .line 1666
    .end local v1    # "newRect":Landroid/graphics/Rect;
    .end local v2    # "oldRect":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 1673
    :pswitch_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 1661
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method checkMaxStackSize(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMinMaxSize()V

    .line 1370
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v0, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v5, v0

    .line 1371
    check-cast v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget v4, v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    .local v4, "minWidth":I
    move-object v5, v0

    .line 1372
    check-cast v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget v3, v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    .local v3, "minHeight":I
    move-object v5, v0

    .line 1373
    check-cast v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget v2, v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    .line 1374
    .local v2, "maxWidth":I
    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iget v1, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    .line 1377
    .local v1, "maxHeight":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v5, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 1378
    :cond_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 1379
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1383
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gt v5, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v5, v1, :cond_3

    .line 1384
    :cond_2
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 1385
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1387
    :cond_3
    return-void
.end method

.method public disableMultiWindowFloatingWindow(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 2526
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2527
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 2528
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 2532
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2533
    return-void

    .line 2530
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_0
.end method

.method public disableMultiWindowTrayBar(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 2512
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2513
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 2514
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 2518
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2519
    return-void

    .line 2516
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_0
.end method

.method public dismissGuide()V
    .locals 1

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->hide()V

    .line 2276
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 2278
    :cond_0
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1291
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    .line 1293
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1297
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1298
    return-void
.end method

.method public exitByCloseBtn()V
    .locals 4

    .prologue
    .line 2400
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2401
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2403
    const-string v1, "MultiPhoneWindow"

    const-string/jumbo v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    :cond_0
    :goto_0
    return-void

    .line 2407
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2411
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "SPLW"

    const-string v3, "CLOSE"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2408
    :catch_0
    move-exception v0

    .line 2409
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method forceHideInputMethod()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1219
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1221
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x0

    .line 1222
    .local v4, "res":Z
    if-eqz v3, :cond_0

    .line 1223
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v4

    .line 1225
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1226
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v1, :cond_1

    move v2, v1

    .line 1228
    .local v2, "haveHardKeyboard":Z
    :goto_0
    if-eqz v2, :cond_2

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 1232
    .local v1, "hardKeyShown":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1233
    const/4 v4, 0x0

    .line 1236
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v1    # "hardKeyShown":Z
    .end local v2    # "haveHardKeyboard":Z
    :cond_0
    return v4

    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_1
    move v2, v5

    .line 1226
    goto :goto_0

    .restart local v2    # "haveHardKeyboard":Z
    :cond_2
    move v1, v5

    .line 1228
    goto :goto_1
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 1075
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 6
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 1080
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1082
    .local v1, "ret":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1083
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1084
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_3

    .line 1085
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1086
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateLayout(), local setBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mInitialFlag:I

    .line 1094
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    .line 1095
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    .line 1096
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    .line 1098
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-nez v2, :cond_1

    .line 1099
    new-instance v2, Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    .line 1101
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->generatePenWindowLayout()V

    .line 1103
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-nez v2, :cond_2

    .line 1104
    new-instance v2, Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/16 v5, 0x8d4

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 1108
    :cond_2
    return-object v1

    .line 1088
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateLayout(), bounds is null, mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method generatePenWindowLayout()V
    .locals 7

    .prologue
    .line 1138
    iget-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v4, :cond_0

    .line 1139
    new-instance v4, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-direct {v4, v5, p0, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/MultiPhoneWindow;F)V

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .line 1142
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1164
    :goto_0
    return-void

    .line 1146
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1147
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x109009b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 1149
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-nez v4, :cond_2

    .line 1150
    new-instance v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    .line 1152
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->generateLayout()V

    .line 1154
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v1, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v4, v1

    .line 1155
    check-cast v4, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    .line 1156
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1157
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1158
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    .line 1159
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1161
    .end local v0    # "content":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    .line 1163
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    goto :goto_0
.end method

.method public getContentRootContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getDisplaySize(Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 1301
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method getDisplaySize(Landroid/graphics/Point;Z)Z
    .locals 5
    .param p1, "outbound"    # Landroid/graphics/Point;
    .param p2, "isReal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1305
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1306
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1308
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 1309
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1314
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_0

    .line 1315
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1316
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 1317
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    .line 1318
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1319
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1325
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1326
    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1330
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getDockingInstance()Lcom/android/internal/policy/multiwindow/Docking;
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    return-object v0
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1391
    return-object p0
.end method

.method public getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    .prologue
    .line 1395
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1396
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1397
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1399
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method public getOptionsPanelGravity()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1409
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 1410
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1411
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1412
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 1413
    .local v2, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 1414
    .local v1, "requestOrientation":I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-ne v1, v5, :cond_1

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v5, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1417
    :cond_0
    const/16 v3, 0x51

    .line 1420
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "requestOrientation":I
    .end local v2    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    goto :goto_0
.end method

.method public getProperContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getRotationOfStackBound()I
    .locals 1

    .prologue
    .line 2266
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    return v0
.end method

.method public getScaleInfo()Landroid/graphics/PointF;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2487
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2488
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2489
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v1

    .line 2491
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method getState()I
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 2035
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2036
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2047
    :goto_0
    :pswitch_0
    return v1

    .line 2040
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 2041
    goto :goto_0

    .line 2042
    :cond_0
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2043
    const/4 v1, 0x3

    goto :goto_0

    .line 2045
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 2036
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handlePause()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 1172
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1175
    const/4 v1, 0x1

    .line 1176
    .local v1, "isScreenOn":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1177
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1178
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 1183
    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    .line 1184
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/MultiPhoneWindow$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/MultiPhoneWindow$3;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1195
    .end local v1    # "isScreenOn":Z
    :cond_1
    return-void

    .line 1179
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "isScreenOn":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasStackFocus()Z
    .locals 1

    .prologue
    .line 1404
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    return v0
.end method

.method initStackBound()V
    .locals 3

    .prologue
    .line 1443
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1444
    .local v0, "bound":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 1446
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1448
    :cond_0
    return-void
.end method

.method protected isFloatingWindow()Z
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1248
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    .line 1250
    const/4 v0, 0x1

    .line 1252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInputMethodShown()Z
    .locals 2

    .prologue
    .line 1240
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1241
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1242
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    .line 1244
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRotated(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1256
    packed-switch p1, :pswitch_data_0

    .line 1264
    :goto_0
    :pswitch_0
    return v0

    .line 1259
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isTouchBlocked()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x1

    .line 1425
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return v1

    .line 1429
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1430
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_2

    .line 1431
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    .line 1432
    goto :goto_0

    .line 1435
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    .line 1436
    goto :goto_0
.end method

.method public minimizeWindow(IZ)V
    .locals 4
    .param p1, "windowMode"    # I
    .param p2, "hide"    # Z

    .prologue
    .line 2464
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    .line 2465
    .local v0, "state":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2472
    :cond_0
    :goto_0
    return-void

    .line 2469
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    .line 2470
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public moveStackBound(IIZ)Z
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "moving"    # Z

    .prologue
    .line 1615
    const/4 v0, 0x0

    .line 1616
    .local v0, "outOfBound":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1617
    .local v1, "stackBound":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1619
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 1621
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1622
    return v0
.end method

.method public moveWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2446
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2447
    return-void
.end method

.method public multiWindow(IZ)V
    .locals 1
    .param p1, "windowMode"    # I
    .param p2, "pinup"    # Z

    .prologue
    .line 2455
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2456
    return-void
.end method

.method protected needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 2
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, 0x0

    .line 2378
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2381
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->isFloatingWindow()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public normalWindow(I)V
    .locals 1
    .param p1, "windowMode"    # I

    .prologue
    .line 2479
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2480
    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .locals 22
    .param p1, "configDiff"    # I

    .prologue
    .line 1864
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMinMaxSize()V

    .line 1866
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1870
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1874
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v7

    .line 1875
    .local v7, "mwState":I
    sget-boolean v18, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v18, :cond_2

    .line 1876
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v10

    .line 1878
    .local v10, "preferredOrientation":I
    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFixedOrientation(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1879
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_0

    .line 1887
    .end local v10    # "preferredOrientation":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 1888
    .local v9, "oldRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1889
    .local v8, "newRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    .line 1891
    sget-boolean v18, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v18, :cond_3

    const-string v19, "MultiPhoneWindow"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onMultiWindowConfigurationChanged "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "oldRect="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getRotation()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v15

    .line 1895
    .local v15, "rotated":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v15, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    .line 1898
    :cond_4
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    .line 1900
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v7, v0, :cond_5

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_8

    .line 1901
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowConfigurationChanged()V

    .line 1907
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    goto/16 :goto_0

    .line 1891
    .end local v15    # "rotated":Z
    :cond_7
    const-string v18, ""

    goto/16 :goto_1

    .line 1911
    .restart local v15    # "rotated":Z
    :cond_8
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    .line 1913
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1918
    :pswitch_1
    const/4 v11, 0x0

    .line 1919
    .local v11, "relativeL":F
    const/4 v13, 0x0

    .line 1920
    .local v13, "relativeT":F
    const/4 v12, 0x0

    .line 1921
    .local v12, "relativeR":F
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 1922
    .local v6, "maxSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 1924
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    .line 1927
    .local v14, "requestOrientation":I
    if-eqz v14, :cond_9

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_e

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/high16 v19, 0x400000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1930
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v17

    .line 1931
    .local v17, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1942
    :cond_b
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 1943
    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v18, v19

    .line 1944
    const/16 v18, 0x0

    cmpl-float v18, v12, v18

    if-lez v18, :cond_c

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    if-lez v18, :cond_c

    .line 1945
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v18, v18, v11

    add-float v19, v11, v12

    div-float v11, v18, v19

    .line 1947
    :cond_c
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 1948
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3851b717    # 5.0E-5f

    add-float v19, v19, v11

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3851b717    # 5.0E-5f

    add-float v20, v20, v13

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1949
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1950
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 1955
    .end local v17    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 1959
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1962
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 1963
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1964
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1965
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    goto/16 :goto_0

    .line 1952
    :cond_e
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "newRect":Landroid/graphics/Rect;
    goto :goto_2

    .line 1971
    .end local v6    # "maxSize":Landroid/graphics/Point;
    .end local v11    # "relativeL":F
    .end local v12    # "relativeR":F
    .end local v13    # "relativeT":F
    .end local v14    # "requestOrientation":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    .line 1972
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 1974
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 1975
    .local v16, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 1976
    const/4 v4, 0x0

    .line 1977
    .local v4, "dx":I
    const/4 v5, 0x0

    .line 1978
    .local v5, "dy":I
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1980
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    if-gez v18, :cond_13

    .line 1981
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v4, v0

    .line 1985
    :cond_f
    :goto_3
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 1986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 1990
    :cond_10
    :goto_4
    if-nez v4, :cond_11

    if-eqz v5, :cond_12

    .line 1991
    :cond_11
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1993
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1982
    :cond_13
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    .line 1983
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    goto :goto_3

    .line 1987
    :cond_14
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 1988
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    goto :goto_4

    .line 1911
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiWindowFocusChanged(IZZ)V
    .locals 3
    .param p1, "notifyReason"    # I
    .param p2, "focus"    # Z
    .param p3, "keepInputMethod"    # Z

    .prologue
    .line 1999
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2004
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackFocus(Z)V

    .line 2007
    :cond_2
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v0, :cond_3

    .line 2008
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    .line 2009
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFixedOrientationCascade()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2010
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    .line 2015
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 2016
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->closeAllPanels()V

    .line 2017
    if-nez p3, :cond_4

    .line 2018
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 2021
    :cond_4
    return-void
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 11
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x4

    .line 1766
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onMultiWindowStyleChanged, reason=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newStyle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldStyle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_0
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_2

    .line 1770
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 1771
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 1857
    :cond_1
    :goto_0
    return-void

    .line 1776
    :cond_2
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_8

    .line 1777
    const/high16 v3, 0x20000

    invoke-virtual {p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1778
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1779
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    .line 1780
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v10, :cond_1

    .line 1781
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1784
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1785
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    .line 1786
    .local v1, "state":I
    if-eq v1, v8, :cond_7

    .line 1787
    if-eq v1, v10, :cond_6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    .line 1788
    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 1792
    .end local v1    # "state":I
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->StopSmartClipService()V

    goto :goto_0

    .line 1797
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_8
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_a

    .line 1798
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1800
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    .line 1802
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeDnDHelpPopup()V
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->access$1000(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V

    .line 1806
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v3, :cond_b

    .line 1807
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-eq v3, v6, :cond_f

    .line 1808
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 1815
    :cond_b
    :goto_2
    const/4 v0, 0x0

    .line 1816
    .local v0, "currStackBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1817
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    .line 1818
    .restart local v1    # "state":I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1821
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1822
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1824
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_c

    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_c

    .line 1826
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    .line 1829
    :cond_c
    if-ne v1, v4, :cond_d

    .line 1830
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 1832
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto/16 :goto_0

    .end local v0    # "currStackBounds":Landroid/graphics/Rect;
    .end local v1    # "state":I
    :cond_e
    move v3, v5

    .line 1808
    goto :goto_1

    .line 1809
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-eq v3, v6, :cond_b

    .line 1810
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_2

    .line 1837
    .restart local v0    # "currStackBounds":Landroid/graphics/Rect;
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1840
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    .line 1843
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1844
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1846
    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_11

    .line 1847
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_11

    .line 1848
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 1853
    :cond_11
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_1

    .line 1854
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->invalidate()V

    .line 1855
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    goto/16 :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1273
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 1274
    if-nez p1, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto :goto_0

    .line 1279
    :pswitch_1
    if-eqz p1, :cond_0

    .line 1280
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1270
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method refreshBorder()V
    .locals 3

    .prologue
    .line 2362
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2363
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .line 2364
    .local v0, "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    if-nez v1, :cond_1

    .line 2365
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    .line 2367
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-eqz v1, :cond_2

    .line 2368
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(Z)V

    .line 2369
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 2370
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2375
    .end local v0    # "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    :cond_2
    :goto_0
    return-void

    .line 2372
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2373
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method refreshUI(I)V
    .locals 10
    .param p1, "forceState"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2098
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v3, :cond_1

    .line 2223
    :cond_0
    :goto_0
    return-void

    .line 2100
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2101
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2105
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    .line 2106
    const/4 v2, -0x1

    .line 2107
    .local v2, "state":I
    if-eq p1, v9, :cond_5

    .line 2108
    move v2, p1

    .line 2112
    :goto_1
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_3

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshUI state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2115
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eq v2, v8, :cond_6

    .line 2116
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    if-eqz v3, :cond_4

    .line 2117
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2126
    :cond_4
    :goto_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2128
    .local v1, "flags":I
    packed-switch v2, :pswitch_data_0

    .line 2220
    :goto_3
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v3, :cond_0

    .line 2221
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 2110
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "flags":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    goto :goto_1

    .line 2120
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_4

    .line 2121
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2122
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    goto :goto_2

    .line 2130
    .restart local v1    # "flags":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_7

    .line 2131
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2133
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_8

    .line 2134
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2135
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v3, :cond_8

    .line 2136
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    .line 2140
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2141
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initFocusedView()V

    .line 2142
    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mInitialFlag:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_9

    .line 2143
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x201

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2146
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 2147
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 2152
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v3, :cond_a

    .line 2153
    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "minimize function is disabled. do not minimize."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2157
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->isMinimizeIconVisible()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2158
    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "minimize icon is already visible."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2161
    :cond_b
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    .line 2162
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_c

    .line 2163
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 2166
    :cond_c
    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    if-ne v3, v9, :cond_d

    .line 2167
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    .line 2170
    :cond_d
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2172
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_e

    .line 2173
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->showMinimizedIconWindow()V

    .line 2175
    :cond_e
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2176
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->saveFocusedView()V

    .line 2177
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2178
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2179
    iput-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    goto/16 :goto_3

    .line 2184
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_f

    .line 2185
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2188
    :cond_f
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    .line 2189
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2191
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_10

    .line 2192
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2195
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2196
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->restoreFocusedView()V

    .line 2197
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2198
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto/16 :goto_3

    .line 2203
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_11

    .line 2204
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2206
    :cond_11
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    .line 2207
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2208
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_12

    .line 2209
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2212
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2213
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initFocusedView()V

    .line 2214
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2215
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto/16 :goto_3

    .line 2128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestMaximize()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2249
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2250
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2251
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    const-string v2, "Minimized->Floating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    :cond_0
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2254
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2255
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2256
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2263
    :cond_1
    :goto_0
    return-void

    .line 2258
    :cond_2
    invoke-direct {p0, v3, v3, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V

    .line 2259
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2260
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method requestState(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/16 v8, 0x800

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2051
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2052
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 2053
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestState state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2095
    :cond_1
    :goto_0
    return-void

    .line 2057
    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 2058
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2062
    :pswitch_1
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2063
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 2064
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2065
    invoke-virtual {v0, v8, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2066
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2067
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2071
    :pswitch_2
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2072
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 2073
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2074
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2075
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2076
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2080
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v1, :cond_2

    .line 2081
    const-string v1, "MultiPhoneWindow"

    const-string/jumbo v2, "minimize function is disabled. do not minimize"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2085
    :cond_2
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2086
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 2087
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2088
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2090
    :cond_3
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2091
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2055
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAppRequestOrientation(I)V
    .locals 4
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v0

    .line 1638
    .local v0, "prevOrientation":I
    if-eq v0, p1, :cond_0

    .line 1639
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    .line 1640
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1641
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAppRequestOrientation(), prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_0
    return-void
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .prologue
    .line 2433
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2434
    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 2499
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2500
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    .line 2501
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 2502
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2503
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 2505
    :cond_0
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 2540
    if-nez p1, :cond_0

    .line 2541
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2551
    :goto_0
    return-void

    .line 2543
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2544
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    .line 2546
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_2

    .line 2547
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2549
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMinimizeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 2558
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2579
    :goto_0
    return-void

    .line 2562
    :cond_0
    if-nez p1, :cond_1

    .line 2563
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    goto :goto_0

    .line 2565
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2566
    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMinimizeView : request view is already added >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2569
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v1, :cond_4

    .line 2571
    :cond_3
    const-string v0, "MultiPhoneWindow"

    const-string/jumbo v1, "setMinimizeView : view width and height must be WRAP_CONTENT."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2574
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_5

    .line 2575
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2577
    :cond_5
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    goto :goto_0
.end method

.method protected setStackBound(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "requestBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1455
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1460
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 1463
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1465
    const/4 v1, 0x0

    .line 1466
    .local v1, "sizeChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 1468
    :cond_4
    const/4 v1, 0x1

    .line 1470
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1471
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStackBounds, requestBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1473
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1474
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1475
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1476
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_7

    .line 1477
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1478
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1479
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_7

    .line 1480
    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1484
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_0

    .line 1485
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method setStackBoundsInternel(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1535
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1536
    const/4 v1, 0x0

    .line 1537
    .local v1, "sizeChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1538
    :cond_0
    const/4 v1, 0x1

    .line 1540
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1541
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1542
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1543
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1544
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_2

    .line 1545
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1546
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1547
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_2

    .line 1548
    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1552
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_3

    .line 1553
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    .line 1556
    .end local v1    # "sizeChanged":Z
    :cond_3
    return-void
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .prologue
    .line 2423
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2424
    const/4 v0, 0x1

    return v0
.end method

.method public setStateChangeListener2(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .prologue
    .line 2428
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .line 2429
    const/4 v0, 0x1

    return v0
.end method

.method public showGuide(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    .line 2281
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2285
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 2286
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    .line 2288
    :cond_1
    return-void
.end method

.method showMinimizedIconWindow()V
    .locals 2

    .prologue
    .line 2226
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v0, :cond_0

    .line 2246
    :goto_0
    return-void

    .line 2231
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MultiPhoneWindow"

    const-string/jumbo v1, "showMinimizedIconWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_2

    .line 2234
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v0, :cond_2

    .line 2235
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    .line 2239
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2240
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;)V

    goto :goto_0

    .line 2241
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_4

    .line 2242
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    goto :goto_0

    .line 2244
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow()V

    goto :goto_0
.end method

.method updateIsFullScreen()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 2350
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2351
    const/4 v0, 0x0

    .line 2352
    .local v0, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 2354
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    if-eq v1, v0, :cond_1

    .line 2355
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh mIsFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

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

    .line 2356
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    .line 2359
    .end local v0    # "isFullScreen":Z
    :cond_1
    return-void

    .line 2352
    .restart local v0    # "isFullScreen":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateMinMaxSize()V
    .locals 11

    .prologue
    .line 1334
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1335
    .local v2, "displaySize":Landroid/graphics/Point;
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1337
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 1338
    .local v3, "displayWidth":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 1340
    .local v1, "displayHeight":I
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v0, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v9, v0

    .line 1342
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v3, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    move-object v9, v0

    .line 1343
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v1, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    .line 1345
    const/4 v4, 0x0

    .line 1346
    .local v4, "isSelective":Z
    sget-boolean v9, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v9, :cond_0

    .line 1347
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1349
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 1350
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 1351
    const/4 v4, 0x1

    .line 1356
    :cond_0
    int-to-float v10, v3

    if-eqz v4, :cond_1

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_0
    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 1357
    .local v8, "minWidth":I
    int-to-float v10, v1

    if-eqz v4, :cond_2

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_1
    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 1358
    .local v7, "minHeight":I
    int-to-float v10, v3

    if-eqz v4, :cond_3

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_2
    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 1359
    .local v6, "maxWidth":I
    int-to-float v10, v1

    if-eqz v4, :cond_4

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_3
    mul-float/2addr v9, v10

    float-to-int v5, v9

    .local v5, "maxHeight":I
    move-object v9, v0

    .line 1361
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v8, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    move-object v9, v0

    .line 1362
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v7, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    move-object v9, v0

    .line 1363
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v6, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    .line 1364
    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iput v5, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    .line 1365
    return-void

    .line 1356
    .end local v5    # "maxHeight":I
    .end local v6    # "maxWidth":I
    .end local v7    # "minHeight":I
    .end local v8    # "minWidth":I
    .restart local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    :cond_1
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    goto :goto_0

    .line 1357
    .restart local v8    # "minWidth":I
    :cond_2
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    goto :goto_1

    .line 1358
    .restart local v7    # "minHeight":I
    :cond_3
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    goto :goto_2

    .line 1359
    .restart local v6    # "maxWidth":I
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    goto :goto_3
.end method

.method updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 4
    .param p1, "newStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v3, 0x1

    .line 1626
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMultiWindowStyle style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1629
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1630
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    .line 1631
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissWritingBuddy()V

    .line 1633
    :cond_1
    return-void
.end method

.method validateStackBound(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 1740
    if-nez p1, :cond_0

    move v3, v4

    .line 1756
    :goto_0
    return v3

    .line 1744
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1745
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1746
    .local v2, "screenWidth":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1748
    .local v1, "screenHeight":I
    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v3, v5, :cond_2

    :cond_1
    if-le v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v3, v5, :cond_3

    .line 1750
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 1752
    :cond_3
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_4

    const-string v5, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateStackBound "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bound=Point("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", screenSize=("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v4

    .line 1756
    goto/16 :goto_0

    .line 1752
    :cond_5
    const-string v3, ""

    goto :goto_1
.end method
