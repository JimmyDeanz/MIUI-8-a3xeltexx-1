.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;,
        Lcom/android/internal/policy/PhoneWindow$ColorViewState;,
        Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$DecorView;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final IS_PEN_SELECTION_ENABLED:Z = true

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final MENU_LONG_POLICY_LAUNCH_SFINDER:Ljava/lang/String; = "SFINDER"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static mSFinderEnabled:Z

.field private static mSFinderFeatureCached:Z

.field private static penState:Z

.field static final sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private badgeIcon:Landroid/graphics/drawable/Drawable;

.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundFadeDurationMillis:J

.field private mBackgroundFallbackResource:I

.field private mBackgroundResource:I

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClipToOutline:Z

.field private mClosingActionMenu:Z

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContentScene:Landroid/transition/Scene;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

.field private mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

.field private mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field private mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mForcedNavigationBarColor:Z

.field private mForcedStatusBarColor:Z

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloating:Z

.field private mIsStartingWindow:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastBackgroundResource:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field mLogoRes:I

.field private mMediaController:Landroid/media/session/MediaController;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field private mNavigationBarColor:I

.field mOutsetBottom:Landroid/util/TypedValue;

.field private mOutsets:Landroid/graphics/Rect;

.field private mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mReenterTransition:Landroid/transition/Transition;

.field mResourcesSetFlags:I

.field private mReturnTransition:Landroid/transition/Transition;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementExitTransition:Landroid/transition/Transition;

.field private mSharedElementReenterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field private mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field private mStatusBarColor:I

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionManager:Landroid/transition/TransitionManager;

.field private mUiOptions:I

.field private mVolumeControlStreamType:I

.field private mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 373
    sput-boolean v1, Lcom/android/internal/policy/PhoneWindow;->penState:Z

    .line 388
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    .line 5858
    sput-boolean v1, Lcom/android/internal/policy/PhoneWindow;->mSFinderFeatureCached:Z

    .line 5859
    sput-boolean v1, Lcom/android/internal/policy/PhoneWindow;->mSFinderEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 391
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 219
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;I)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    .line 221
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 222
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 296
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I

    .line 297
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    .line 298
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    .line 307
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 309
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 310
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 311
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 312
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 313
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 315
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 317
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 319
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 325
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 335
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 342
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 354
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 355
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 356
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 357
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 358
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 359
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 360
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 361
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 364
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 368
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;

    .line 381
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    .line 392
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/PhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/PhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/PhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;
    .param p4, "x4"    # I

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 195
    sput-boolean p0, Lcom/android/internal/policy/PhoneWindow;->penState:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ContextMenuBuilder;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/MenuDialogHelper;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/PhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/PhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/PhoneWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I

    return v0
.end method

.method private adjustVolumeControlStreamTypeForKnox(I)I
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 1893
    move v1, p1

    .line 1895
    .local v1, "ret":I
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 1896
    .local v0, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_0

    .line 1897
    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getVolumeControlStream()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1911
    .end local v1    # "ret":I
    :cond_0
    :goto_0
    return v1

    .line 1899
    .restart local v1    # "ret":I
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1901
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 1903
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 1905
    :pswitch_3
    const/4 v1, 0x5

    goto :goto_0

    .line 1897
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private adjustVolumeForRotation(I)I
    .locals 7
    .param p1, "val"    # I

    .prologue
    const/4 v6, 0x2

    .line 1869
    move v1, p1

    .line 1871
    .local v1, "ret":I
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 1872
    .local v0, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1873
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1874
    .local v3, "windowService":Landroid/view/WindowManager;
    if-eqz v3, :cond_1

    .line 1875
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1876
    .local v2, "rot":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_2

    .line 1877
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    if-ne v2, v6, :cond_1

    .line 1878
    :cond_0
    mul-int/lit8 v1, v1, -0x1

    .line 1888
    .end local v2    # "rot":I
    .end local v3    # "windowService":Landroid/view/WindowManager;
    :cond_1
    :goto_0
    return v1

    .line 1881
    .restart local v2    # "rot":I
    .restart local v3    # "windowService":Landroid/view/WindowManager;
    :cond_2
    if-eq v2, v6, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 1882
    :cond_3
    mul-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 5122
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 5123
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_1

    .line 5148
    :cond_0
    :goto_0
    return-void

    .line 5127
    :cond_1
    if-nez p3, :cond_3

    .line 5129
    if-nez p2, :cond_2

    .line 5130
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 5131
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    .line 5135
    :cond_2
    if-eqz p2, :cond_3

    .line 5137
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 5142
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 5145
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5146
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .param p0, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 757
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 758
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .locals 1

    .prologue
    .line 1159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1161
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    :cond_0
    monitor-exit p0

    return-void

    .line 1159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .locals 1

    .prologue
    .line 1170
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1172
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 1174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    :cond_0
    monitor-exit p0

    return-void

    .line 1170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static ensureSFinderFeatureCached(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5862
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/PhoneWindow;->mSFinderFeatureCached:Z

    if-nez v0, :cond_0

    .line 5863
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/PhoneWindow;->mSFinderEnabled:Z

    .line 5864
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/PhoneWindow;->mSFinderFeatureCached:Z

    .line 5866
    :cond_0
    return-void
.end method

.method private getActivityCount(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2130
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2131
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2133
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 5032
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 5033
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 5042
    :goto_0
    return-object v0

    .line 5035
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 5036
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 5038
    :cond_1
    const v0, 0x1020480

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 5039
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 5040
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5042
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4864
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 4865
    if-nez p2, :cond_1

    .line 4866
    const/4 v2, 0x0

    .line 4884
    :cond_0
    :goto_0
    return-object v2

    .line 4868
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4872
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, p1, :cond_5

    .line 4873
    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 4874
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_4

    .line 4875
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4877
    :cond_4
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 4880
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_5
    aget-object v2, v0, p1

    .line 4881
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_0

    .line 4882
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    goto :goto_0
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 5046
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 5047
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 5056
    :goto_0
    return-object v0

    .line 5049
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 5050
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 5052
    :cond_1
    const v0, 0x1020481

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 5053
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 5054
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5056
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 2139
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2142
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 5014
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 5015
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    .line 5020
    :goto_0
    return-object v0

    .line 5017
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 5018
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 5020
    :cond_1
    const v0, 0x102003e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    .line 4896
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v5, 0x0

    .line 4911
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 4912
    if-nez p2, :cond_1

    .line 4913
    const/4 v2, 0x0

    .line 4933
    :cond_0
    :goto_0
    return-object v2

    .line 4915
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4919
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, p1, :cond_5

    .line 4920
    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 4921
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_4

    .line 4922
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4924
    :cond_4
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 4927
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    aget-object v2, v0, p1

    .line 4928
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 4929
    if-eqz p3, :cond_6

    move-object v2, p3

    :goto_1
    aput-object v2, v0, p1

    goto :goto_0

    :cond_6
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    goto :goto_1
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 5060
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 5061
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    .line 5066
    :goto_0
    return-object v0

    .line 5063
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 5064
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 5066
    :cond_1
    const v0, 0x1020040

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 5
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 4837
    if-eq p1, p2, :cond_0

    .line 4850
    .end local p1    # "currentValue":Landroid/transition/Transition;
    :goto_0
    return-object p1

    .line 4840
    .restart local p1    # "currentValue":Landroid/transition/Transition;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 4841
    .local v2, "transitionId":I
    move-object v1, p2

    .line 4842
    .local v1, "transition":Landroid/transition/Transition;
    if-eq v2, v4, :cond_1

    const/high16 v3, 0x10f0000

    if-eq v2, v3, :cond_1

    .line 4843
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 4844
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 4845
    instance-of v3, v1, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 4847
    const/4 v1, 0x0

    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    :cond_1
    move-object p1, v1

    .line 4850
    goto :goto_0
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 3

    .prologue
    .line 1822
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v1, :cond_0

    .line 1823
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1824
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1825
    return-object v0

    .line 1828
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getZoomKeyController()Lcom/android/internal/policy/samsung/ZoomKeyController;
    .locals 2

    .prologue
    .line 5850
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    if-nez v0, :cond_0

    .line 5851
    new-instance v0, Lcom/android/internal/policy/samsung/ZoomKeyController;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/policy/samsung/ZoomKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    .line 5853
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    return-object v0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 5
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v4, 0x4

    .line 1745
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1746
    .local v1, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1747
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1748
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1751
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1752
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1754
    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1756
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1757
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1759
    :cond_1
    return-void
.end method

.method private installDecor()V
    .locals 22

    .prologue
    .line 4642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 4643
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 4644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setDescendantFocusability(I)V

    .line 4645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setIsRootNamespace(Z)V

    .line 4646
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 4647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4650
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-nez v18, :cond_14

    .line 4651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 4654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/PhoneWindow$DecorView;->makeOptionalFitsSystemWindows()V

    .line 4656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    const v19, 0x1020482

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/DecorContentParent;

    .line 4659
    .local v9, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    if-eqz v9, :cond_16

    .line 4660
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 4661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 4662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    if-nez v18, :cond_1

    .line 4663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 4666
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v13

    .line 4667
    .local v13, "localFeatures":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 4668
    const/16 v18, 0x1

    shl-int v18, v18, v11

    and-int v18, v18, v13

    if-eqz v18, :cond_2

    .line 4669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 4667
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4673
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 4675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    move/from16 v18, v0

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v18

    if-nez v18, :cond_15

    .line 4677
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 4684
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x2

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v18

    if-nez v18, :cond_7

    .line 4686
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 4694
    :cond_7
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v15

    .line 4695
    .local v15, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v18

    if-nez v18, :cond_9

    if-eqz v15, :cond_8

    iget-object v0, v15, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 4696
    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 4719
    .end local v11    # "i":I
    .end local v13    # "localFeatures":I
    .end local v15    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 4720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    .line 4725
    :cond_a
    const/16 v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 4726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    .line 4727
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x1b

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 4730
    .local v17, "transitionRes":I
    if-eqz v17, :cond_19

    .line 4731
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v12

    .line 4732
    .local v12, "inflater":Landroid/transition/TransitionInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 4739
    .end local v12    # "inflater":Landroid/transition/TransitionInflater;
    .end local v17    # "transitionRes":I
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 4741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v20, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 4743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1d

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 4745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v20, 0x29

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 4747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 4749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v20, 0x2a

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 4752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1f

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 4754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v20, 0x2b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 4758
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x21

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 4761
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    .line 4762
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x20

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 4765
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_e

    .line 4766
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x25

    const/16 v20, 0x12c

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 4770
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    .line 4771
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x2c

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 4778
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 4779
    .local v7, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 4781
    .local v8, "coverMode":I
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x80

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 4783
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_10

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 4784
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "com.sec.android.sdk.cover.MODE"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 4786
    .local v6, "cm":I
    if-eqz v6, :cond_10

    .line 4787
    move v8, v6

    .line 4793
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "cm":I
    :cond_10
    :goto_4
    if-nez v8, :cond_12

    .line 4794
    instance-of v0, v7, Landroid/app/Activity;

    move/from16 v18, v0

    if-nez v18, :cond_11

    instance-of v0, v7, Landroid/content/ContextWrapper;

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 4795
    check-cast v7, Landroid/content/ContextWrapper;

    .end local v7    # "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    .line 4797
    .restart local v7    # "context":Landroid/content/Context;
    :cond_11
    if-eqz v7, :cond_12

    instance-of v0, v7, Landroid/app/Activity;

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 4799
    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    new-instance v19, Landroid/content/ComponentName;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v7, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v20, 0x80

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 4803
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_12

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 4804
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 4805
    .local v14, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "com.sec.android.sdk.cover.MODE"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    .line 4807
    .restart local v6    # "cm":I
    if-eqz v6, :cond_12

    .line 4808
    move v8, v6

    .line 4818
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "cm":I
    .end local v14    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_12
    :goto_5
    if-eqz v8, :cond_13

    .line 4819
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 4820
    .restart local v14    # "lp":Landroid/view/WindowManager$LayoutParams;
    iput v8, v14, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 4827
    .end local v14    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewConfiguration;->hasFakeMenuKey()Z

    move-result v18

    if-nez v18, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 4830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setFloatingMenuEnabled(Z)V

    .line 4834
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "coverMode":I
    .end local v9    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_14
    return-void

    .line 4678
    .restart local v9    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .restart local v11    # "i":I
    .restart local v13    # "localFeatures":I
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v18

    if-nez v18, :cond_5

    .line 4680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto/16 :goto_1

    .line 4699
    .end local v11    # "i":I
    .end local v13    # "localFeatures":I
    :cond_16
    const v18, 0x1020016

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 4700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 4701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getLayoutDirection()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 4702
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_18

    .line 4703
    const v18, 0x1020041

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 4705
    .local v16, "titleContainer":Landroid/view/View;
    if-eqz v16, :cond_17

    .line 4706
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4710
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/FrameLayout;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 4708
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 4714
    .end local v16    # "titleContainer":Landroid/view/View;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 4735
    .restart local v17    # "transitionRes":I
    :cond_19
    new-instance v18, Landroid/transition/TransitionManager;

    invoke-direct/range {v18 .. v18}, Landroid/transition/TransitionManager;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    goto/16 :goto_3

    .line 4790
    .end local v17    # "transitionRes":I
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v8    # "coverMode":I
    :catch_0
    move-exception v10

    .line 4791
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 4811
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v10

    .line 4812
    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_5

    .line 4813
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v10

    .line 4814
    .local v10, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_5
.end method

.method private launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5158
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 5159
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5160
    :cond_0
    const/4 v4, 0x0

    .line 5176
    .local v4, "result":Z
    :goto_0
    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 5179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5180
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5181
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "search"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v6, v7, v8, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v4

    .line 5184
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "result":Z
    :cond_1
    return v4

    .line 5162
    :cond_2
    const-string/jumbo v6, "search"

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 5163
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 5164
    .local v2, "deviceId":I
    const/4 v5, 0x0

    .line 5165
    .local v5, "searchEvent":Landroid/view/SearchEvent;
    if-eqz v2, :cond_3

    .line 5166
    new-instance v5, Landroid/view/SearchEvent;

    .end local v5    # "searchEvent":Landroid/view/SearchEvent;
    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    .line 5169
    .restart local v5    # "searchEvent":Landroid/view/SearchEvent;
    :cond_3
    :try_start_0
    invoke-interface {v1, v5}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .restart local v4    # "result":Z
    goto :goto_0

    .line 5170
    .end local v4    # "result":Z
    :catch_0
    move-exception v3

    .line 5171
    .local v3, "e":Ljava/lang/AbstractMethodError;
    const-string v6, "PhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WindowCallback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not implement"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " method onSearchRequested(SearchEvent); fa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5173
    invoke-interface {v1}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v4

    .restart local v4    # "result":Z
    goto/16 :goto_0
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 4855
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4860
    :goto_0
    return-object v1

    .line 4857
    :catch_0
    move-exception v0

    .line 4858
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 18
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 775
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v4, :cond_2

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 783
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 784
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v15, 0x1

    .line 786
    .local v15, "isXLarge":Z
    :goto_1
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    const/4 v14, 0x1

    .line 789
    .local v14, "isHoneycombApp":Z
    :goto_2
    if-eqz v15, :cond_2

    if-eqz v14, :cond_2

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 794
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 795
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 797
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0

    .line 784
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 786
    .restart local v15    # "isXLarge":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 801
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "isXLarge":Z
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    .line 802
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_0

    .line 807
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 811
    const/4 v3, -0x2

    .line 812
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_e

    .line 813
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-nez v4, :cond_c

    .line 815
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v4, :cond_0

    .line 823
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 827
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 828
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_8

    .line 829
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 833
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_d

    .line 836
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 837
    .local v10, "backgroundResId":I
    const/4 v3, -0x1

    .line 842
    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 845
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 846
    .local v16, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 847
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 849
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 851
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 853
    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_b

    .line 860
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 878
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_b
    :goto_5
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 880
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    const/16 v7, 0x3eb

    const/high16 v8, 0x820000

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget v9, v9, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 887
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v4, :cond_12

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 889
    sget-object v4, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 894
    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 896
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    goto/16 :goto_0

    .line 817
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 819
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeAllViews()V

    goto/16 :goto_3

    .line 840
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    .restart local v10    # "backgroundResId":I
    goto/16 :goto_4

    .line 863
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-nez v4, :cond_10

    .line 864
    :cond_f
    const-string v4, "PhoneWindow"

    const-string/jumbo v5, "openPanel() : menu is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 867
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v4

    if-nez v4, :cond_11

    .line 868
    const/4 v3, -0x1

    goto/16 :goto_5

    .line 869
    :cond_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_b

    .line 872
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 873
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_b

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    .line 874
    const/4 v3, -0x1

    goto/16 :goto_5

    .line 891
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_12
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_6
.end method

.method private openPanelsAfterRestore()V
    .locals 4

    .prologue
    .line 2416
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2418
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 2436
    :cond_0
    return-void

    .line 2423
    :cond_1
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2424
    aget-object v2, v1, v0

    .line 2428
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_2

    .line 2429
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2430
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_2

    .line 2431
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2432
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2423
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 1185
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 1186
    :cond_0
    const/4 v0, 0x0

    .line 1208
    :cond_1
    :goto_0
    return v0

    .line 1189
    :cond_2
    const/4 v0, 0x0

    .line 1193
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_4

    .line 1195
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1198
    :cond_4
    if-eqz v0, :cond_1

    .line 1200
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1203
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v1, :cond_1

    .line 1204
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method private registerSwipeCallbacks()V
    .locals 2

    .prologue
    .line 5070
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout;

    .line 5072
    .local v0, "swipeDismiss":Lcom/android/internal/widget/SwipeDismissLayout;
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$2;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V

    .line 5078
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$3;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V

    .line 5108
    return-void
.end method

.method private reopenMenu(Z)V
    .locals 8
    .param p1, "toggleMenuMode"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1260
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v6}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v6}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1263
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 1264
    .local v1, "cb":Landroid/view/Window$Callback;
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p1, :cond_4

    .line 1265
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1267
    iget-boolean v4, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 1269
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1270
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1273
    :cond_2
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 1277
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_3

    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v1, v5, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1279
    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v1, v7, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1280
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1316
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .end local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_3
    :goto_0
    return-void

    .line 1284
    .restart local v1    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1285
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 1286
    .restart local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1287
    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v1, v7, v4}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1294
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .end local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_6

    .line 1295
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1296
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1300
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_6
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 1302
    .restart local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_3

    .line 1307
    if-eqz p1, :cond_8

    iget-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v6, :cond_7

    move v2, v4

    .line 1309
    .local v2, "newExpandedMode":Z
    :goto_1
    iput-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1310
    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1313
    iput-boolean v2, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1315
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0

    .end local v2    # "newExpandedMode":Z
    :cond_7
    move v2, v5

    .line 1307
    goto :goto_1

    :cond_8
    iget-boolean v2, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    goto :goto_1
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2392
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2393
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 2394
    .local v0, "curFeatureId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2395
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 2392
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2400
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2401
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    goto :goto_1

    .line 2408
    .end local v0    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2372
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2373
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 2382
    :cond_0
    return-void

    .line 2377
    :cond_1
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "curFeatureId":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2378
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 2379
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2377
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5808
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5810
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5814
    :cond_0
    :goto_0
    return-void

    .line 5811
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v3, 0x0

    .line 1732
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1733
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1735
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1738
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    .line 1740
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1742
    :cond_1
    return-void
.end method

.method private transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    .line 541
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    .line 542
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    goto :goto_0
.end method

.method private updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .prologue
    .line 4957
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 4988
    :cond_0
    :goto_0
    return-void

    .line 4961
    :cond_1
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .line 4963
    .local v1, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_2

    if-eqz p3, :cond_0

    .line 4967
    :cond_2
    const/4 v0, 0x0

    .line 4968
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_4

    .line 4969
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 4970
    if-nez v0, :cond_3

    .line 4971
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 4972
    :cond_3
    if-nez v0, :cond_4

    .line 4973
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 4975
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_6

    .line 4976
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4977
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p3, :cond_0

    .line 4978
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4981
    :cond_6
    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v0, :cond_7

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_0

    .line 4984
    :cond_7
    iput-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 4985
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 4986
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method private updateInt(IIZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .prologue
    .line 4994
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 5011
    :cond_0
    :goto_0
    return-void

    .line 4998
    :cond_1
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 5000
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    .line 5004
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 5005
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5006
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_0

    .line 5009
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onIntChanged(II)V

    goto :goto_0
.end method

.method private updateProgressBars(I)V
    .locals 10
    .param p1, "value"    # I

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1655
    invoke-direct {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1656
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1658
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1659
    .local v1, "features":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_6

    .line 1660
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_1

    .line 1661
    if-eqz v2, :cond_4

    .line 1662
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 1663
    .local v3, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-nez v6, :cond_0

    if-ge v3, v8, :cond_3

    :cond_0
    move v4, v5

    .line 1665
    .local v4, "visibility":I
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1670
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_1
    :goto_1
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_2

    .line 1671
    if-eqz v0, :cond_5

    .line 1672
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1729
    :cond_2
    :goto_2
    return-void

    .line 1663
    .restart local v3    # "level":I
    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    .line 1667
    .end local v3    # "level":I
    :cond_4
    const-string v6, "PhoneWindow"

    const-string v7, "Horizontal progress bar not located in current window decor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1674
    :cond_5
    const-string v5, "PhoneWindow"

    const-string v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1677
    :cond_6
    const/4 v6, -0x2

    if-ne p1, v6, :cond_a

    .line 1678
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_7

    .line 1679
    if-eqz v2, :cond_8

    .line 1680
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1685
    :cond_7
    :goto_3
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_2

    .line 1686
    if-eqz v0, :cond_9

    .line 1687
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 1682
    :cond_8
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1689
    :cond_9
    const-string v5, "PhoneWindow"

    const-string v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1692
    :cond_a
    const/4 v6, -0x3

    if-ne p1, v6, :cond_c

    .line 1693
    if-eqz v2, :cond_b

    .line 1694
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1696
    :cond_b
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1698
    :cond_c
    const/4 v6, -0x4

    if-ne p1, v6, :cond_e

    .line 1699
    if-eqz v2, :cond_d

    .line 1700
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1702
    :cond_d
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1704
    :cond_e
    if-ltz p1, :cond_11

    if-gt p1, v8, :cond_11

    .line 1708
    if-eqz v2, :cond_f

    .line 1709
    add-int/lit8 v5, p1, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1714
    :goto_4
    if-ge p1, v8, :cond_10

    .line 1715
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 1711
    :cond_f
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1717
    :cond_10
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 1719
    :cond_11
    const/16 v5, 0x4e20

    if-gt v5, p1, :cond_2

    const/16 v5, 0x7530

    if-gt p1, v5, :cond_2

    .line 1720
    if-eqz v2, :cond_12

    .line 1721
    add-int/lit16 v5, p1, -0x4e20

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1726
    :goto_5
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_2

    .line 1723
    :cond_12
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 523
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    const-string v1, "PhoneWindow"

    const-string v2, "addContentView does not support content transitions"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 529
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 530
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 531
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 533
    :cond_2
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 1

    .prologue
    .line 4638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 4639
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 969
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 980
    :goto_0
    return-void

    .line 973
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 974
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 975
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 976
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 977
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 979
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method public final closeAllPanels()V
    .locals 6

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 1138
    .local v4, "wm":Landroid/view/ViewManager;
    if-nez v4, :cond_0

    .line 1152
    :goto_0
    return-void

    .line 1142
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1143
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_2

    array-length v0, v3

    .line 1144
    .local v0, "N":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1145
    aget-object v2, v3, v1

    .line 1146
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    .line 1147
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1144
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1143
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1151
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    goto :goto_0
.end method

.method public final closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 903
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 912
    :goto_0
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 908
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    goto :goto_0

    .line 910
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public final closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 927
    if-eqz p2, :cond_1

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 934
    .local v0, "wm":Landroid/view/ViewManager;
    if-eqz v0, :cond_3

    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_3

    .line 935
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v1, :cond_2

    .line 936
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 938
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v1, :cond_2

    .line 939
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 943
    :cond_2
    if-eqz p2, :cond_3

    .line 944
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 948
    :cond_3
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 949
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 950
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 953
    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 955
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v1, :cond_4

    .line 958
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 959
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 962
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-ne v1, p1, :cond_0

    .line 963
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 964
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    goto :goto_0
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 5025
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 5026
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 5027
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$4000(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 5029
    :cond_0
    return-void
.end method

.method doInvalidatePanelMenu(I)V
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1010
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1011
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    const/4 v0, 0x0

    .line 1015
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 1016
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1017
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1018
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1019
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1022
    :cond_2
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1023
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 1025
    :cond_3
    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 1026
    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1029
    const/16 v2, 0x8

    if-eq p1, v2, :cond_4

    if-nez p1, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_0

    .line 1031
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1032
    if-eqz v1, :cond_0

    .line 1033
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1034
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method doPendingInvalidatePanelMenu()V
    .locals 2

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1005
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1007
    :cond_0
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1233
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1234
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1235
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1236
    aget-object v2, v3, v1

    .line 1237
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1241
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :goto_2
    return-object v2

    .line 1234
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1235
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1241
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 4297
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 25
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 4318
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4330
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v21, 0x4

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    .line 4331
    const v21, 0x10100

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v22

    xor-int/lit8 v22, v22, -0x1

    and-int v8, v21, v22

    .line 4333
    .local v8, "flagsToUpdate":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_24

    .line 4334
    const/16 v21, -0x2

    const/16 v22, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 4335
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 4340
    :goto_0
    const/16 v21, 0x3

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_25

    .line 4341
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 4347
    :cond_0
    :goto_1
    const/16 v21, 0x11

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 4348
    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 4351
    :cond_1
    const/16 v21, 0x10

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 4352
    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 4355
    :cond_2
    const/16 v21, 0x19

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 4356
    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 4359
    :cond_3
    const/16 v21, 0x9

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 4360
    const/16 v21, 0x400

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v22

    xor-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 4363
    :cond_4
    const/16 v21, 0x17

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 4365
    const/high16 v21, 0x4000000

    const/high16 v22, 0x4000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 4369
    :cond_5
    const/16 v21, 0x18

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 4371
    const/high16 v21, 0x8000000

    const/high16 v22, 0x8000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 4375
    :cond_6
    const/16 v21, 0x16

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 4376
    const/high16 v21, 0x2000000

    const/high16 v22, 0x2000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 4379
    :cond_7
    const/16 v21, 0xe

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 4380
    const/high16 v21, 0x100000

    const/high16 v22, 0x100000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 4383
    :cond_8
    const/16 v22, 0x12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v21, v0

    const/16 v23, 0xb

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_26

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 4386
    const/high16 v21, 0x800000

    const/high16 v22, 0x800000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 4389
    :cond_9
    const/16 v21, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4390
    const/16 v21, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4391
    const/16 v21, 0x31

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 4392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v21, v0

    if-nez v21, :cond_a

    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 4393
    :cond_a
    const/16 v21, 0x31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4396
    :cond_b
    const/16 v21, 0x33

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 4397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v21, v0

    if-nez v21, :cond_c

    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 4398
    :cond_c
    const/16 v21, 0x33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4401
    :cond_d
    const/16 v21, 0x34

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 4402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v21, v0

    if-nez v21, :cond_e

    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 4403
    :cond_e
    const/16 v21, 0x34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4406
    :cond_f
    const/16 v21, 0x32

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 4407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v21, v0

    if-nez v21, :cond_10

    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 4408
    :cond_10
    const/16 v21, 0x32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4411
    :cond_11
    const/16 v21, 0x1a

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 4412
    const/16 v21, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 4414
    :cond_12
    const/16 v21, 0x2d

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 4415
    const/16 v21, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 4418
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4419
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v20, v0

    .line 4420
    .local v20, "targetSdk":I
    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_27

    const/16 v17, 0x1

    .line 4421
    .local v17, "targetPreHoneycomb":Z
    :goto_3
    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_28

    const/16 v18, 0x1

    .line 4422
    .local v18, "targetPreIcs":Z
    :goto_4
    const/16 v21, 0x15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_29

    const/16 v19, 0x1

    .line 4423
    .local v19, "targetPreL":Z
    :goto_5
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x112000c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 4425
    .local v16, "targetHcNeedsOptions":Z
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v21

    if-eqz v21, :cond_14

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v21

    if-eqz v21, :cond_2a

    :cond_14
    const/4 v12, 0x1

    .line 4427
    .local v12, "noActionBar":Z
    :goto_6
    if-nez v17, :cond_15

    if-eqz v18, :cond_2b

    if-eqz v16, :cond_2b

    if-eqz v12, :cond_2b

    .line 4428
    :cond_15
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    .line 4435
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v21, v0

    if-nez v21, :cond_16

    .line 4436
    if-nez v19, :cond_16

    const/16 v21, 0x22

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 4439
    const/high16 v21, -0x80000000

    const/high16 v22, -0x80000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 4443
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    move/from16 v21, v0

    if-nez v21, :cond_17

    .line 4444
    const/16 v21, 0x23

    const/high16 v22, -0x1000000

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 4446
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    move/from16 v21, v0

    if-nez v21, :cond_18

    .line 4447
    const/16 v21, 0x24

    const/high16 v22, -0x1000000

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 4449
    :cond_18
    const/16 v21, 0x2e

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 4450
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getSystemUiVisibility()I

    move-result v21

    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x2000

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setSystemUiVisibility(I)V

    .line 4454
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    move/from16 v21, v0

    if-nez v21, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1b

    .line 4456
    :cond_1a
    const/16 v21, 0x15

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 4459
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 4463
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 4465
    .local v13, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    move-result v21

    if-nez v21, :cond_1c

    .line 4466
    const/16 v21, 0xd

    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4471
    :cond_1c
    const/16 v21, 0xb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 4474
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v21

    and-int/lit8 v21, v21, 0x2

    if-nez v21, :cond_1d

    .line 4475
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4477
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    move-result v21

    if-nez v21, :cond_1e

    .line 4478
    const/16 v21, 0x0

    const/high16 v22, 0x3f000000    # 0.5f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4483
    :cond_1e
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v21, v0

    if-nez v21, :cond_1f

    .line 4484
    const/16 v21, 0x8

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 4490
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v21

    if-nez v21, :cond_23

    .line 4491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_22

    .line 4492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    move/from16 v21, v0

    if-nez v21, :cond_20

    .line 4493
    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    .line 4496
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    move/from16 v21, v0

    if-nez v21, :cond_21

    .line 4497
    const/16 v21, 0x2

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 4499
    :cond_21
    const/16 v21, 0x2f

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    .line 4507
    :cond_22
    const/16 v21, 0x26

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 4508
    const/16 v21, 0x27

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 4509
    const/16 v21, 0x7

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 4515
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v7

    .line 4517
    .local v7, "features":I
    and-int/lit16 v0, v7, 0x800

    move/from16 v21, v0

    if-eqz v21, :cond_2c

    .line 4518
    const v11, 0x10900f0

    .line 4574
    .local v11, "layoutResource":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startChanging()V

    .line 4576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 4577
    .local v10, "in":Landroid/view/View;
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4578
    check-cast v10, Landroid/view/ViewGroup;

    .end local v10    # "in":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;

    .line 4580
    const v21, 0x1020002

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 4581
    .local v5, "contentParent":Landroid/view/ViewGroup;
    if-nez v5, :cond_36

    .line 4582
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "Window couldn\'t find content container view"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 4337
    .end local v5    # "contentParent":Landroid/view/ViewGroup;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "features":I
    .end local v11    # "layoutResource":I
    .end local v12    # "noActionBar":Z
    .end local v13    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "targetHcNeedsOptions":Z
    .end local v17    # "targetPreHoneycomb":Z
    .end local v18    # "targetPreIcs":Z
    .end local v19    # "targetPreL":Z
    .end local v20    # "targetSdk":I
    :cond_24
    const v21, 0x10100

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    goto/16 :goto_0

    .line 4342
    :cond_25
    const/16 v21, 0xf

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 4344
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    goto/16 :goto_1

    .line 4383
    :cond_26
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 4420
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v20    # "targetSdk":I
    :cond_27
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 4421
    .restart local v17    # "targetPreHoneycomb":Z
    :cond_28
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 4422
    .restart local v18    # "targetPreIcs":Z
    :cond_29
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 4425
    .restart local v16    # "targetHcNeedsOptions":Z
    .restart local v19    # "targetPreL":Z
    :cond_2a
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 4430
    .restart local v12    # "noActionBar":Z
    :cond_2b
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    goto/16 :goto_7

    .line 4519
    .restart local v7    # "features":I
    .restart local v13    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2c
    and-int/lit8 v21, v7, 0x18

    if-eqz v21, :cond_2e

    .line 4520
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2d

    .line 4521
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 4522
    .local v15, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v21

    const v22, 0x116002a

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4524
    iget v11, v15, Landroid/util/TypedValue;->resourceId:I

    .line 4529
    .end local v15    # "res":Landroid/util/TypedValue;
    .restart local v11    # "layoutResource":I
    :goto_9
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_8

    .line 4526
    .end local v11    # "layoutResource":I
    :cond_2d
    const v11, 0x10900f2

    .restart local v11    # "layoutResource":I
    goto :goto_9

    .line 4531
    .end local v11    # "layoutResource":I
    :cond_2e
    and-int/lit8 v21, v7, 0x24

    if-eqz v21, :cond_2f

    and-int/lit16 v0, v7, 0x100

    move/from16 v21, v0

    if-nez v21, :cond_2f

    .line 4535
    const v11, 0x10900ed

    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    .line 4537
    .end local v11    # "layoutResource":I
    :cond_2f
    and-int/lit16 v0, v7, 0x80

    move/from16 v21, v0

    if-eqz v21, :cond_31

    .line 4540
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_30

    .line 4541
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 4542
    .restart local v15    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v21

    const v22, 0x116002b

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4544
    iget v11, v15, Landroid/util/TypedValue;->resourceId:I

    .line 4549
    .end local v15    # "res":Landroid/util/TypedValue;
    .restart local v11    # "layoutResource":I
    :goto_a
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_8

    .line 4546
    .end local v11    # "layoutResource":I
    :cond_30
    const v11, 0x10900ec

    .restart local v11    # "layoutResource":I
    goto :goto_a

    .line 4550
    .end local v11    # "layoutResource":I
    :cond_31
    and-int/lit8 v21, v7, 0x2

    if-nez v21, :cond_34

    .line 4553
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_32

    .line 4554
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 4555
    .restart local v15    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v21

    const v22, 0x116002c

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4557
    iget v11, v15, Landroid/util/TypedValue;->resourceId:I

    .line 4558
    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    .end local v11    # "layoutResource":I
    .end local v15    # "res":Landroid/util/TypedValue;
    :cond_32
    and-int/lit16 v0, v7, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_33

    .line 4559
    const/16 v21, 0x30

    const v22, 0x10900eb

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    .line 4563
    .end local v11    # "layoutResource":I
    :cond_33
    const v11, 0x10900f1

    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    .line 4566
    .end local v11    # "layoutResource":I
    :cond_34
    and-int/lit16 v0, v7, 0x400

    move/from16 v21, v0

    if-eqz v21, :cond_35

    .line 4567
    const v11, 0x10900ef

    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    .line 4570
    .end local v11    # "layoutResource":I
    :cond_35
    const v11, 0x10900ee

    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    .line 4585
    .restart local v5    # "contentParent":Landroid/view/ViewGroup;
    :cond_36
    and-int/lit8 v21, v7, 0x20

    if-eqz v21, :cond_37

    .line 4586
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v14

    .line 4587
    .local v14, "progress":Landroid/widget/ProgressBar;
    if-eqz v14, :cond_37

    .line 4588
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 4592
    .end local v14    # "progress":Landroid/widget/ProgressBar;
    :cond_37
    and-int/lit16 v0, v7, 0x800

    move/from16 v21, v0

    if-eqz v21, :cond_38

    .line 4593
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks()V

    .line 4598
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v21

    if-nez v21, :cond_3b

    .line 4600
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    move/from16 v21, v0

    if-eqz v21, :cond_3c

    .line 4603
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4608
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    move/from16 v21, v0

    if-eqz v21, :cond_3d

    .line 4612
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 4616
    .local v9, "frame":Landroid/graphics/drawable/Drawable;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 4618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    .line 4619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setClipToOutline(Z)V

    .line 4621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-eqz v21, :cond_39

    .line 4622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 4625
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    move/from16 v21, v0

    if-nez v21, :cond_3a

    .line 4626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 4628
    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    .line 4631
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/PhoneWindow$DecorView;->finishChanging()V

    .line 4633
    return-object v5

    .line 4606
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v4    # "background":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_b

    .line 4614
    :cond_3d
    const/4 v9, 0x0

    .restart local v9    # "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_c
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 5298
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 5308
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2147
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 2149
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-nez v0, :cond_0

    .line 2263
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    return-object v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 5249
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 5260
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 5204
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .prologue
    .line 5832
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method protected getOptionsPanelGravity()I
    .locals 6

    .prologue
    .line 1403
    :try_start_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1404
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600bd

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1405
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1407
    .local v2, "smallestScreenWidthDp":I
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    .line 1408
    sget-object v3, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravityTablet()I

    move-result v3

    .line 1414
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "smallestScreenWidthDp":I
    :goto_0
    return v3

    .line 1410
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "smallestScreenWidthDp":I
    :cond_0
    sget-object v3, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1412
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "smallestScreenWidthDp":I
    :catch_0
    move-exception v0

    .line 1413
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "PhoneWindow"

    const-string v4, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1414
    const/16 v3, 0x51

    goto :goto_0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 5265
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 5254
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 5271
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 5282
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 5287
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 5276
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    .prologue
    .line 5332
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getStatusBarColor()I
    .locals 1

    .prologue
    .line 5818
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 4

    .prologue
    .line 5313
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x12c

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    goto :goto_0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .prologue
    .line 5194
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 6
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1442
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1443
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move v2, v3

    .line 1469
    :goto_0
    return v2

    .line 1447
    :cond_0
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    move v2, v4

    .line 1448
    goto :goto_0

    .line 1451
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v2, :cond_2

    .line 1452
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    .line 1455
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .local v1, "menuView":Lcom/android/internal/view/menu/MenuView;
    :goto_1
    move-object v2, v1

    .line 1459
    check-cast v2, Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1461
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1463
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .line 1464
    .local v0, "defaultAnimations":I
    if-eqz v0, :cond_3

    .line 1465
    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    :cond_3
    move v2, v3

    .line 1467
    goto :goto_0

    .line 1455
    .end local v0    # "defaultAnimations":I
    .end local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    goto :goto_1

    .restart local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_5
    move v2, v4

    .line 1469
    goto :goto_0
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 8
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v7, 0x0

    .line 1378
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 1379
    const/16 v2, 0x51

    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1380
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1381
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1383
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x26

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1384
    .local v1, "elevation":F
    cmpl-float v2, v1, v7

    if-eqz v2, :cond_0

    .line 1385
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    .line 1387
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1389
    const/4 v2, 0x1

    return v2
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 10
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const v9, 0x1010397

    const/4 v8, 0x1

    .line 1328
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1331
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v6, :cond_3

    .line 1333
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1334
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1335
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1337
    const/4 v5, 0x0

    .line 1338
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1339
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1340
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1341
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1342
    invoke-virtual {v5, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1349
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1350
    if-nez v5, :cond_1

    .line 1351
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1352
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1354
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1357
    :cond_2
    if-eqz v5, :cond_3

    .line 1358
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1359
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1363
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1364
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1365
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1367
    return v8

    .line 1345
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    invoke-virtual {v0, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1818
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1819
    return-void
.end method

.method public invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 994
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 996
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 998
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 1000
    :cond_0
    return-void
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 4950
    invoke-direct {p0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 4951
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 2258
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 710
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    .line 711
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 712
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 713
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_4

    .line 715
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 716
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 719
    :cond_0
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_1

    .line 720
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 725
    :cond_1
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 728
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 731
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_2

    .line 732
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 734
    :cond_2
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_3

    .line 735
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 745
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .end local v1    # "state":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    .line 741
    .restart local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    goto :goto_0
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .prologue
    .line 1600
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1601
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1608
    .local v0, "view":Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_2

    .line 1609
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1610
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1611
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1615
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    :goto_1
    return-void

    .line 1602
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1603
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "view":Landroid/widget/ImageView;
    goto :goto_0

    .line 1613
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onIntChanged(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1625
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1626
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    .line 1633
    :cond_1
    :goto_0
    return-void

    .line 1627
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 1628
    const v1, 0x1020041

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1629
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1

    .line 1630
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v10, 0x800000

    const/high16 v9, 0x10000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1937
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1942
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 2125
    .end local p1    # "featureId":I
    :cond_0
    :goto_1
    return v6

    .line 1937
    .end local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local p1    # "featureId":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1948
    .restart local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    const/4 v0, 0x0

    .line 1949
    .local v0, "direction":I
    sparse-switch p2, :sswitch_data_1

    .line 1964
    :goto_2
    iget v5, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 1967
    .local v5, "volumeControlStreamType":I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->adjustVolumeForRotation(I)I

    move-result v0

    .line 1968
    iget v6, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->adjustVolumeControlStreamTypeForKnox(I)I

    move-result v5

    .line 1973
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v6, :cond_2

    .line 1974
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v6, v0, v7}, Landroid/media/session/MediaController;->adjustVolume(II)V

    :goto_3
    move v6, v7

    .line 1981
    goto :goto_1

    .line 1951
    .end local v5    # "volumeControlStreamType":I
    :sswitch_1
    const/4 v0, 0x1

    .line 1952
    goto :goto_2

    .line 1954
    :sswitch_2
    const/4 v0, -0x1

    .line 1955
    goto :goto_2

    .line 1957
    :sswitch_3
    const/16 v0, 0x65

    goto :goto_2

    .line 1976
    .restart local v5    # "volumeControlStreamType":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v6

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    const/16 v9, 0x1011

    invoke-virtual {v6, v8, v0, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_3

    .line 1996
    .end local v0    # "direction":I
    .end local v5    # "volumeControlStreamType":I
    :sswitch_4
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v8, :cond_0

    .line 1997
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v8, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    .line 1998
    goto :goto_1

    .line 2005
    :sswitch_5
    if-gez p1, :cond_3

    move p1, v6

    .end local p1    # "featureId":I
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    move v6, v7

    .line 2006
    goto :goto_1

    .line 2010
    .restart local p1    # "featureId":I
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_0

    .line 2011
    if-ltz p1, :cond_0

    .line 2013
    if-eqz v1, :cond_4

    .line 2014
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_4
    move v6, v7

    .line 2016
    goto :goto_1

    :sswitch_7
    move v6, v7

    .line 2021
    goto :goto_1

    .line 2025
    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_0

    .line 2030
    const-string v6, "android.intent.action.MAIN"

    const-string v8, "android.intent.category.APP_EMAIL"

    invoke-static {v6, v8}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2031
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2032
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2035
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move v6, v7

    .line 2040
    goto/16 :goto_1

    .line 2036
    :catch_0
    move-exception v2

    .line 2037
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "PhoneWindow"

    const-string v8, "No activity to launch email"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2044
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_0

    .line 2048
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2049
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "com.android.mms"

    const-string v8, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2051
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2053
    invoke-direct {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->getActivityCount(Landroid/content/Intent;)I

    move-result v6

    if-lez v6, :cond_6

    .line 2055
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_5
    move v6, v7

    .line 2069
    goto/16 :goto_1

    .line 2056
    :catch_1
    move-exception v2

    .line 2057
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "PhoneWindow"

    const-string v8, "No activity to launch mms ConversationComposer."

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2060
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    const-string v6, "com.samsung.android.messaging"

    const-string v8, "com.samsung.android.messaging.ui.ConversationComposer"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2061
    invoke-direct {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->getActivityCount(Landroid/content/Intent;)I

    move-result v6

    if-lez v6, :cond_5

    .line 2063
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 2064
    :catch_2
    move-exception v2

    .line 2065
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "PhoneWindow"

    const-string v8, "No activity to launch new mms ConversationComposer."

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2073
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_a
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_0

    .line 2077
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2078
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2079
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2080
    const-string/jumbo v6, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v8, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2082
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    move v6, v7

    .line 2086
    goto/16 :goto_1

    .line 2090
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_b
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_0

    .line 2094
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 2096
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_7

    .line 2097
    invoke-virtual {v3, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_7
    move v6, v7

    .line 2099
    goto/16 :goto_1

    .line 2103
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_c
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_0

    .line 2107
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2108
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "com.google.android.googlequicksearchbox"

    const-string v8, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2110
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2111
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2112
    invoke-direct {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->getActivityCount(Landroid/content/Intent;)I

    move-result v6

    if-lez v6, :cond_8

    .line 2113
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    :cond_8
    move v6, v7

    .line 2115
    goto/16 :goto_1

    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_d
    move v6, v7

    .line 2119
    goto/16 :goto_1

    .line 2083
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v6

    goto :goto_6

    .line 1942
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_4
        0x52 -> :sswitch_5
        0x55 -> :sswitch_4
        0x56 -> :sswitch_4
        0x57 -> :sswitch_4
        0x58 -> :sswitch_4
        0x59 -> :sswitch_4
        0x5a -> :sswitch_4
        0x5b -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_4
        0xa4 -> :sswitch_0
        0x3ea -> :sswitch_a
        0x3ee -> :sswitch_b
        0x3ef -> :sswitch_c
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_d
        0x3f2 -> :sswitch_7
        0x3f5 -> :sswitch_9
        0x3fb -> :sswitch_0
        0x3fc -> :sswitch_0
    .end sparse-switch

    .line 1949
    :sswitch_data_1
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0xa4 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 1046
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1048
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1050
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1052
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1053
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_0

    .line 1054
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1058
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    return v2
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x1014

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2159
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2161
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    if-eqz v0, :cond_0

    .line 2162
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 2167
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 2253
    .end local p1    # "featureId":I
    :cond_1
    :goto_1
    return v3

    .line 2159
    .end local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local p1    # "featureId":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2172
    .restart local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    const/16 v1, 0x1014

    .line 2176
    .local v1, "flags":I
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v5, :cond_3

    .line 2177
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5, v3, v7}, Landroid/media/session/MediaController;->adjustVolume(II)V

    :goto_2
    move v3, v4

    .line 2182
    goto :goto_1

    .line 2179
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v5, v6, v3, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_2

    .line 2190
    .end local v1    # "flags":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v3, p3, v5}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    move v3, v4

    .line 2191
    goto :goto_1

    .line 2206
    :sswitch_2
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v5, :cond_1

    .line 2207
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 2208
    goto :goto_1

    .line 2215
    :sswitch_3
    if-gez p1, :cond_4

    move p1, v3

    .end local p1    # "featureId":I
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    move v3, v4

    .line 2217
    goto :goto_1

    .line 2221
    .restart local p1    # "featureId":I
    :sswitch_4
    if-ltz p1, :cond_1

    .line 2222
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2223
    if-nez p1, :cond_5

    .line 2224
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2225
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_5

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_5

    .line 2228
    invoke-direct {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    move v3, v4

    .line 2229
    goto :goto_1

    .line 2232
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    move v3, v4

    .line 2233
    goto :goto_1

    .line 2243
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2246
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2247
    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    :cond_6
    move v3, v4

    .line 2249
    goto :goto_1

    .line 2167
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x52 -> :sswitch_3
        0x54 -> :sswitch_5
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_1
        0x3fb -> :sswitch_0
        0x3fc -> :sswitch_0
        0x3fd -> :sswitch_1
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 1068
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v3, :cond_1

    .line 1069
    iput v4, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1071
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1073
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    if-nez v2, :cond_2

    .line 1133
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    :goto_0
    return-void

    .line 1078
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v0, 0x0

    .line 1079
    .local v0, "playSoundEffect":Z
    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1082
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1083
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1084
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v0

    goto :goto_0

    .line 1087
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v0

    goto :goto_0

    .line 1090
    :cond_4
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_5

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v3, :cond_6

    .line 1094
    :cond_5
    iget-boolean v0, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1097
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0

    .line 1099
    :cond_6
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_1

    .line 1100
    const/4 v1, 0x1

    .line 1101
    .local v1, "show":Z
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_7

    .line 1104
    iput-boolean v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1105
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1108
    :cond_7
    if-eqz v1, :cond_1

    .line 1110
    const v3, 0xc351

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1113
    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1246
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1247
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1248
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 1249
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 1252
    .end local v1    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 1257
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1419
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1420
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    move-object v0, v3

    .line 1424
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    if-eqz v0, :cond_0

    .line 1425
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1426
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1427
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_0

    .line 1428
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1422
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 762
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final peekDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1214
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1215
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return v0

    .line 1218
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1222
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    .line 1225
    .local v0, "res":Z
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_0

    .line 1226
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v5

    .line 608
    :cond_1
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_2

    move v5, v4

    .line 609
    goto :goto_0

    .line 612
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eq v3, p1, :cond_3

    .line 614
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 617
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 619
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_4

    .line 620
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 623
    :cond_4
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_c

    :cond_5
    move v1, v4

    .line 626
    .local v1, "isActionBarMenu":Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_6

    .line 629
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 632
    :cond_6
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_12

    .line 634
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_7

    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_e

    .line 635
    :cond_7
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_8

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_0

    .line 641
    :cond_8
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_a

    .line 642
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v3, :cond_9

    .line 643
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    .line 645
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 652
    :cond_a
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 653
    if-eqz v0, :cond_b

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 655
    :cond_b
    invoke-virtual {p1, v8}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 657
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_0

    .line 659
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    .end local v1    # "isActionBarMenu":Z
    :cond_c
    move v1, v5

    .line 623
    goto :goto_1

    .line 665
    .restart local v1    # "isActionBarMenu":Z
    :cond_d
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 672
    :cond_e
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 676
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_f

    .line 677
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 678
    iput-object v8, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 681
    :cond_f
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 682
    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_10

    .line 685
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 687
    :cond_10
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 692
    :cond_11
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    :goto_2
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 694
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_14

    move v3, v4

    :goto_3
    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 695
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 696
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 700
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_12
    iput-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 701
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 702
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move v5, v4

    .line 704
    goto/16 :goto_0

    .line 692
    :cond_13
    const/4 v3, -0x1

    goto :goto_2

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v3, v5

    .line 694
    goto :goto_3
.end method

.method public requestFeature(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 402
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 403
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "requestFeature() must be called before adding content"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    .line 406
    .local v0, "features":I
    shl-int v2, v4, p1

    or-int v1, v0, v2

    .line 407
    .local v1, "newFeatures":I
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    and-int/lit16 v2, v1, -0x34c2

    if-eqz v2, :cond_1

    .line 411
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine custom titles with other title features"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    if-ne p1, v3, :cond_2

    .line 415
    const/4 v2, 0x0

    .line 435
    :goto_0
    return v2

    .line 417
    :cond_2
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    .line 419
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    .line 422
    :cond_3
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    if-ne p1, v2, :cond_4

    .line 423
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine swipe dismissal and the action bar."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    :cond_4
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_5

    if-ne p1, v3, :cond_5

    .line 427
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine swipe dismissal and the action bar."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 433
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :cond_6
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v2

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 2322
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 2362
    :cond_0
    :goto_0
    return-void

    .line 2326
    :cond_1
    const-string v5, "android:views"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 2328
    .local v4, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_2

    .line 2329
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2333
    :cond_2
    const-string v5, "android:focusedViewId"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2334
    .local v1, "focusedViewId":I
    if-eq v1, v6, :cond_3

    .line 2335
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2336
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_5

    .line 2337
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2346
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_3
    :goto_1
    const-string v5, "android:Panels"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 2347
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_4

    .line 2348
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 2351
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_0

    .line 2352
    const-string v5, "android:ActionBar"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2354
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_6

    .line 2355
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    .line 2356
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    .line 2339
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2    # "needsFocus":Landroid/view/View;
    :cond_5
    const-string v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Previously focused view reported id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during save, but can\'t be found during restore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2358
    .end local v2    # "needsFocus":Landroid/view/View;
    .restart local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6
    const-string v5, "PhoneWindow"

    const-string v6, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 2281
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2282
    .local v2, "outState":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 2316
    :cond_0
    :goto_0
    return-object v2

    .line 2286
    :cond_1
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2287
    .local v4, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2288
    const-string v5, "android:views"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2291
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2292
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2293
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2294
    const-string v5, "android:focusedViewId"

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2304
    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2305
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 2306
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 2307
    const-string v5, "android:Panels"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2310
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_0

    .line 2311
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2312
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2313
    const-string v5, "android:ActionBar"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 5800
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5801
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5804
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5805
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 5293
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 5294
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allowExitTransitionOverlap"    # Z

    .prologue
    .line 5303
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 5304
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 1497
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    if-eqz v1, :cond_2

    .line 1498
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    .line 1499
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1500
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v1, :cond_1

    .line 1501
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1503
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    if-eqz v1, :cond_2

    .line 1504
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    .line 1507
    :cond_2
    return-void

    .line 1504
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    goto :goto_0
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4938
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 4939
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 4940
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 4941
    return-void
.end method

.method public final setChildInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 4945
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 4946
    return-void
.end method

.method public final setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 1489
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 1490
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setClipToOutline(Z)V

    .line 1493
    :cond_0
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .locals 0
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 397
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 398
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutResID"    # I

    .prologue
    const/16 v3, 0xc

    .line 468
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 469
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 474
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 475
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v1

    .line 477
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 481
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 483
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 484
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 486
    :cond_1
    return-void

    .line 470
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 479
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 490
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v3, 0xc

    .line 498
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 499
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 504
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    new-instance v1, Landroid/transition/Scene;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 507
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 511
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 513
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 516
    :cond_1
    return-void

    .line 500
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 509
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setDefaultIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1773
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1788
    :cond_0
    :goto_0
    return-void

    .line 1776
    :cond_1
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1777
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 1779
    :cond_2
    if-eqz p1, :cond_3

    .line 1780
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1781
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0

    .line 1783
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1785
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0
.end method

.method public setDefaultLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1801
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1804
    :cond_1
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1805
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    goto :goto_0
.end method

.method public final setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 1480
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 1481
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    .line 1484
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1485
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 5209
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 5210
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 5219
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 5220
    return-void
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1560
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1561
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1562
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1563
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1565
    :cond_0
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 1541
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1542
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1543
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1544
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1545
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1546
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1548
    :cond_0
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1552
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1553
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_0

    .line 1554
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1555
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1557
    :cond_0
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1511
    if-eqz p2, :cond_1

    .line 1512
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1513
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v1, p2, :cond_0

    .line 1514
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1515
    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1516
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1517
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1522
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1526
    if-eqz p2, :cond_2

    .line 1527
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1528
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1529
    :cond_0
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1530
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1531
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1532
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1537
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_1
    :goto_0
    return-void

    .line 1535
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setFeatureFromAttrs(ILandroid/content/res/TypedArray;II)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "drawableAttr"    # I
    .param p4, "alphaAttr"    # I

    .prologue
    .line 4302
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4303
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 4304
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 4305
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 4307
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 4308
    const/4 v2, -0x1

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 4309
    .local v0, "alpha":I
    if-ltz v0, :cond_1

    .line 4310
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawableAlpha(II)V

    .line 4313
    .end local v0    # "alpha":I
    :cond_1
    return-void
.end method

.method public final setFeatureInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1571
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 1572
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1763
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1764
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1765
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1766
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1769
    :cond_0
    return-void
.end method

.method public setIsStartingWindow(Z)V
    .locals 0
    .param p1, "isStartingWindow"    # Z

    .prologue
    .line 5845
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    .line 5846
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1812
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    .line 1814
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1792
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1793
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1794
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1797
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 5199
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 5200
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 5837
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 5838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 5839
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 5840
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$4000(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 5842
    :cond_0
    return-void
.end method

.method public setNavigationGuardVisibility(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 5900
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5901
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5903
    :cond_0
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 5224
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 5225
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 5214
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 5215
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 5229
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 5230
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 5239
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 5240
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 5244
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 5245
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 5234
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 5235
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 1
    .param p1, "sharedElementsUseOverlay"    # Z

    .prologue
    .line 5327
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 5328
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 5823
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 5824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 5825
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 5826
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$4000(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 5828
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 582
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 591
    return-void
.end method

.method public setTransientCocktailBar(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .prologue
    .line 5871
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5872
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 5873
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 5877
    :goto_0
    return-void

    .line 5875
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_0
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 3
    .param p1, "fadeDurationMillis"    # J

    .prologue
    .line 5319
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 5320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5322
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 5323
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 456
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 440
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 441
    return-void
.end method

.method public setUiOptions(II)V
    .locals 2
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 445
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 446
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 5189
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 5190
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 556
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setFocusable(Z)V

    .line 1839
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 552
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 984
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 985
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 986
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 990
    :goto_0
    return-void

    .line 988
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method protected final updateDrawable(IZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .prologue
    .line 1584
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1585
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    .line 1586
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1588
    :cond_0
    return-void
.end method
