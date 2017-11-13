.class public Lcom/android/internal/policy/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;
    }
.end annotation


# static fields
.field private static final FLOATING_MENU_BOTTOM_MARGIN:F = 48.0f

.field private static final FLOATING_MENU_TOUCH_THRESHOLD:F = 6.0f

.field private static final isElasticEnabled:Z = true


# instance fields
.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDisableSpenGesture:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final mFeatureId:I

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingMenuBtn:Landroid/widget/ImageButton;

.field private mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

.field private mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

.field private mFloatingMenuLastUpdateTime:J

.field private mFloatingMenuTouchedButtonPos:[I

.field private mFloatingMenuTouchedPos:[I

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mIsPenSelectionMode:Z

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastRightInset:I

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field protected final mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

.field protected mNavigationGuard:Landroid/view/View;

.field private mPrimaryActionMode:Landroid/view/ActionMode;

.field private mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private mRootScrollY:I

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private mSpenUspLevel:I

.field protected final mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

.field protected mStatusGuard:Landroid/view/View;

.field private mWatchingForMenu:Z

.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    const/4 v1, 0x4

    const/high16 v2, 0x4000000

    const/16 v3, 0x30

    const/4 v4, 0x3

    const-string v5, "android:status:background"

    const v6, 0x102002f

    const/16 v7, 0x400

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/PhoneWindow$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    new-instance v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    const/4 v1, 0x2

    const/high16 v2, 0x8000000

    const/16 v3, 0x50

    const/4 v4, 0x5

    const-string v5, "android:navigation:background"

    const v6, 0x1020030

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/PhoneWindow$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDisableSpenGesture:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mSpenUspLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuLastUpdateTime:J

    iput p3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    const v0, 0x10c000e

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_pen_gesture"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDisableSpenGesture:I

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_0

    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mSpenUspLevel:I

    :cond_0
    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/PhoneWindow$DecorView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/PhoneWindow$DecorView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/WindowInsets;
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    :cond_1
    return-void
.end method

.method private createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, p3, p2, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;Z)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;Z)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;Z)Landroid/view/ActionMode;
    .locals 2
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "useSamsungToolbar"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V

    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1, p3}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Z)V

    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$8;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView$8;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 12
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupPrimaryActionMode()V

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v7, 0x1010431

    invoke-virtual {v2, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_0
    new-instance v7, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    new-instance v7, Landroid/widget/PopupWindow;

    const v10, 0x1160020

    invoke-direct {v7, v0, v4, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v10, 0x10102eb

    invoke-virtual {v7, v10, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .local v3, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v7, Lcom/android/internal/policy/PhoneWindow$DecorView$6;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$6;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v3    # "height":I
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    new-instance v4, Lcom/android/internal/view/StandaloneActionMode;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v7, :cond_4

    move v7, v8

    :goto_2
    invoke-direct {v4, v10, v11, p1, v7}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    :cond_1
    return-object v4

    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto :goto_0

    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_3
    const v7, 0x102047d

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_1

    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_4
    move v7, v9

    goto :goto_2
.end method

.method private drawableChanged()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    iget-boolean v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->invalidate()V

    const/4 v4, -0x1

    .local v4, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    :cond_2
    :goto_1
    iput v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    iget v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/PhoneWindow;->access$2400(Lcom/android/internal/policy/PhoneWindow;I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .local v1, "bop":I
    if-eq v3, v10, :cond_4

    if-ne v1, v10, :cond_5

    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    move v4, v1

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    move v4, v3

    goto :goto_1

    :cond_7
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_1

    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_8
    const/4 v4, -0x3

    goto :goto_1
.end method

.method private endOnGoingFadeAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method private isFloatingMenuEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOutOfBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x5

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V

    goto :goto_0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V

    return-void
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "isSamsung"    # Z

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$7;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 5
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    .local v2, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v1, 0x0

    .local v1, "mode":Landroid/view/ActionMode;
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v2, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupPrimaryActionMode()V

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_0

    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_3
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    const/16 v4, 0x63

    if-ne v3, v4, :cond_1

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    :cond_5
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_1

    :cond_6
    invoke-direct {p0, p3, v2, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    .restart local v0    # "ame":Ljava/lang/AbstractMethodError;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private updateColorViewTranslations()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_3

    int-to-float v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_1

    int-to-float v2, v0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 26
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWindowSystemUiVisibility()I

    move-result v3

    or-int v4, v2, v3

    .local v4, "sysUiVisibility":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$1800(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v20, 0x1

    .local v20, "disallowAnimate":Z
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v2, v3

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_1
    or-int v20, v20, v2

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v23, 0x1

    .local v23, "hasTopStableInset":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    move/from16 v0, v23

    if-eq v0, v2, :cond_a

    const/4 v2, 0x1

    :goto_3
    or-int v20, v20, v2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    if-eqz v2, :cond_b

    const/16 v21, 0x1

    .local v21, "hasBottomStableInset":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    move/from16 v0, v21

    if-eq v0, v2, :cond_c

    const/4 v2, 0x1

    :goto_5
    or-int v20, v20, v2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    if-eqz v2, :cond_d

    const/16 v22, 0x1

    .local v22, "hasRightStableInset":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    move/from16 v0, v22

    if-eq v0, v2, :cond_e

    const/4 v2, 0x1

    :goto_7
    or-int v20, v20, v2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    .end local v21    # "hasBottomStableInset":Z
    .end local v22    # "hasRightStableInset":Z
    .end local v23    # "hasTopStableInset":Z
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    if-lez v2, :cond_f

    const/4 v7, 0x1

    .local v7, "navBarToRightEdge":Z
    :goto_8
    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    .local v6, "navBarSize":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$1900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v5

    const/4 v8, 0x0

    if-eqz p2, :cond_11

    if-nez v20, :cond_11

    const/4 v9, 0x1

    :goto_a
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    if-eqz v7, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    if-eqz v2, :cond_12

    const/16 v25, 0x1

    .local v25, "statusBarNeedsRightInset":Z
    :goto_b
    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    .local v14, "statusBarRightInset":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    const/4 v13, 0x0

    if-eqz p2, :cond_1

    if-nez v20, :cond_1

    :cond_1
    const/4 v15, 0x0

    move-object/from16 v8, p0

    move v10, v4

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v14    # "statusBarRightInset":I
    .end local v20    # "disallowAnimate":Z
    .end local v25    # "statusBarNeedsRightInset":Z
    :cond_2
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    and-int/lit16 v2, v4, 0x200

    if-nez v2, :cond_14

    and-int/lit8 v2, v4, 0x2

    if-nez v2, :cond_14

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    if-nez v2, :cond_14

    const/16 v19, 0x1

    .local v19, "consumingNavBar":Z
    :goto_d
    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    move/from16 v18, v0

    .local v18, "consumedRight":I
    :goto_e
    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    move/from16 v17, v0

    .local v17, "consumedBottom":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v24, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    move-object/from16 v0, v24

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_4

    :cond_3
    move/from16 v0, v18

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v0, v17

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestApplyInsets()V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    sub-int v5, v5, v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    sub-int v8, v8, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .end local v24    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p1

    :cond_6
    return-object p1

    .end local v17    # "consumedBottom":I
    .end local v18    # "consumedRight":I
    .end local v19    # "consumingNavBar":Z
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0

    .restart local v20    # "disallowAnimate":Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_2

    .restart local v23    # "hasTopStableInset":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_4

    .restart local v21    # "hasBottomStableInset":Z
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_6

    .restart local v22    # "hasRightStableInset":Z
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_7

    .end local v21    # "hasBottomStableInset":Z
    .end local v22    # "hasRightStableInset":Z
    .end local v23    # "hasTopStableInset":Z
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_8

    .restart local v7    # "navBarToRightEdge":Z
    :cond_10
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    goto/16 :goto_9

    .restart local v6    # "navBarSize":I
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_12
    const/16 v25, 0x0

    goto/16 :goto_b

    .restart local v25    # "statusBarNeedsRightInset":Z
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_c

    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v20    # "disallowAnimate":Z
    .end local v25    # "statusBarNeedsRightInset":Z
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_d

    .restart local v19    # "consumingNavBar":Z
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_e

    .restart local v18    # "consumedRight":I
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_f
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)V
    .locals 8
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    if-nez v2, :cond_2

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    const v4, 0x1060032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v6

    const v7, 0x800053

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 13
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v6, 0x0

    .local v6, "showStatusGuard":Z
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    .local v2, "mlpChanged":Z
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$2200(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Lcom/android/internal/policy/PhoneWindow;->access$2202(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$2200(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .local v3, "newMargin":I
    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v7, :cond_6

    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    const v9, 0x1060032

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v8, v8, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v12, 0x800033

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_7

    const/4 v6, 0x1

    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$2300(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_8

    const/4 v4, 0x1

    .local v4, "nonOverlay":Z
    :goto_3
    const/4 v8, 0x0

    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    const/4 v7, 0x1

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v7, v9, v10}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    move-result-object p1

    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_b

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-object p1

    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "newMargin":I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v8, :cond_1

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .restart local v4    # "nonOverlay":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    const/4 v7, 0x0

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5

    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_b
    const/16 v7, 0x8

    goto :goto_6
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    if-nez v0, :cond_1

    move v3, v5

    .local v3, "isDown":Z
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$1000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$1000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v7

    if-eq v7, v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    if-eqz v2, :cond_2

    .end local v2    # "handled":Z
    :cond_0
    :goto_1
    return v5

    .end local v3    # "isDown":Z
    :cond_1
    move v3, v6

    goto :goto_0

    .restart local v3    # "isDown":Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v8}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v8

    # invokes: Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v7, v8, v4, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->access$1200(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_4

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v7, :cond_4

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .restart local v2    # "handled":Z
    :goto_2
    if-eqz v2, :cond_5

    const/16 v7, 0x52

    if-ne v4, v7, :cond_0

    if-nez v3, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7, v6}, Lcom/android/internal/policy/PhoneWindow;->access$1002(Lcom/android/internal/policy/PhoneWindow;I)I

    goto :goto_1

    .end local v2    # "handled":Z
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .end local v1    # "cb":Landroid/view/Window$Callback;
    :cond_5
    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    # invokes: Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v6, v7, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->access$1200(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .local v1, "handled":Z
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v4

    iput-boolean v3, v4, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    :cond_0
    :goto_0
    return v3

    .end local v1    # "handled":Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_3

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .restart local v1    # "handled":Z
    :goto_1
    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v5, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->access$1300(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    # invokes: Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v2, v6, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->access$1200(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    iput-boolean v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .end local v1    # "handled":Z
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mSpenUspLevel:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    .end local v0    # "action":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_3

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .end local v1    # "cb":Landroid/view/Window$Callback;
    .restart local v0    # "action":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    const/16 v2, 0xd3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xd5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xd4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    goto :goto_0

    .end local v0    # "action":I
    .restart local v1    # "cb":Landroid/view/Window$Callback;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawKnoxBadge(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, -0x1

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/PersonaManager;->isKnoxMultiwindowsSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v7, v9, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v7, v9, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    # setter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7, v8}, Lcom/android/internal/policy/PhoneWindow;->access$802(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getMeasuredWidth()I

    move-result v6

    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getMeasuredHeight()I

    move-result v3

    .local v3, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .local v1, "badgeW":I
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .local v0, "badgeH":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .local v2, "bounds":Landroid/graphics/Rect;
    int-to-float v7, v0

    int-to-float v8, v3

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v4, v7, v8

    .local v4, "resizedHeight":F
    int-to-float v7, v1

    int-to-float v8, v6

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v5, v7, v8

    .local v5, "resizedWidth":F
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    float-to-double v8, v5

    add-double/2addr v8, v12

    double-to-int v8, v8

    sub-int v8, v6, v8

    float-to-double v10, v4

    add-double/2addr v10, v12

    double-to-int v9, v10

    sub-int v9, v3, v9

    invoke-virtual {v7, v8, v9, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "resizedHeight":F
    .end local v5    # "resizedWidth":F
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sub-int v8, v6, v1

    sub-int v9, v3, v0

    invoke-virtual {v7, v8, v9, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public finishChanging()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    return-void
.end method

.method protected getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const v4, 0x10803f8

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .local v0, "mUm":Landroid/os/UserManager;
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "knox_name"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "userName":Ljava/lang/String;
    if-eqz v1, :cond_1

    sget-object v2, Landroid/os/PersonaManager;->SECOND_KNOX_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public isTransitionGroup()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    :cond_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateWindowResizeState()V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    :cond_0
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2500(Lcom/android/internal/policy/PhoneWindow;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->isFloatingMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getRootView()Landroid/view/View;

    move-result-object v1

    .local v1, "rootView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setFloatingMenuEnabled(Z)V

    .end local v1    # "rootView":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "rootView":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PhoneWindow"

    const-string v3, "Change the child order of the floating menu button."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v4

    const v5, 0x10809f7

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "currWindowBackground":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .local v2, "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v3

    .local v3, "states":[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "newBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .end local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "newBackground":Landroid/graphics/drawable/Drawable;
    .end local v2    # "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    .end local v3    # "states":[I
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v4

    const v5, 0x10809f5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "newBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v2, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->access$1300(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_5

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    :cond_5
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "sugar"

    const-string v7, "ro.build.scafe.syrup"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->setWACOMPen(Z)V

    # setter for: Lcom/android/internal/policy/PhoneWindow;->penState:Z
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$1402(Z)Z

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDisableSpenGesture:I

    if-nez v6, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-ne v6, v8, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v7, 0xd4

    if-ne v6, v7, :cond_1

    const/16 v6, 0xd6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v6, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .local v3, "y":I
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_1
    return v4

    .end local v0    # "action":I
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-eq v6, v8, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/inputmethod/InputMethodManager;->setWACOMPen(Z)V

    # setter for: Lcom/android/internal/policy/PhoneWindow;->penState:Z
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$1402(Z)Z

    goto :goto_0

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v0    # "action":I
    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getOutsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->offsetLeftAndRight(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->offsetTopAndBottom(I)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    const/4 v7, 0x1

    .local v7, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .local v5, "heightMode":I
    const/4 v2, 0x0

    .local v2, "fixedWidth":Z
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .local v14, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v14, :cond_0

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .local v15, "w":I
    :goto_2
    if-lez v15, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .local v18, "widthSize":I
    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v2, 0x1

    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    .end local v18    # "widthSize":I
    :cond_0
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v5, v0, :cond_1

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .local v13, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v13, :cond_1

    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v3, v0

    .local v3, "h":I
    :goto_4
    if-lez v3, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .local v6, "heightSize":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getOutsets(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    if-gtz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .local v11, "mode":I
    if-eqz v11, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .end local v4    # "height":I
    .end local v11    # "mode":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    if-gtz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    if-lez v19, :cond_5

    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .restart local v11    # "mode":I
    if-eqz v11, :cond_5

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .end local v11    # "mode":I
    .end local v16    # "width":I
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getMeasuredWidth()I

    move-result v16

    .restart local v16    # "width":I
    const/4 v8, 0x0

    .local v8, "measure":Z
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    if-nez v2, :cond_6

    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .local v12, "tv":Landroid/util/TypedValue;
    :goto_5
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    invoke-virtual {v12, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v10, v0

    .local v10, "min":I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v10, :cond_6

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v8, 0x1

    .end local v10    # "min":I
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_6
    if-eqz v8, :cond_7

    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_7
    return-void

    .end local v2    # "fixedWidth":Z
    .end local v5    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v16    # "width":I
    .end local v17    # "widthMode":I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .restart local v2    # "fixedWidth":Z
    .restart local v5    # "heightMode":I
    .restart local v7    # "isPortrait":Z
    .restart local v17    # "widthMode":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_1

    .restart local v14    # "tvw":Landroid/util/TypedValue;
    :cond_a
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .restart local v15    # "w":I
    goto/16 :goto_2

    .end local v15    # "w":I
    :cond_b
    const/4 v15, 0x0

    .restart local v15    # "w":I
    goto/16 :goto_2

    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_3

    .restart local v13    # "tvh":Landroid/util/TypedValue;
    :cond_d
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v3, v0

    .restart local v3    # "h":I
    goto/16 :goto_4

    .end local v3    # "h":I
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "h":I
    goto/16 :goto_4

    .end local v3    # "h":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    .restart local v8    # "measure":Z
    .restart local v16    # "width":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_5

    .restart local v12    # "tv":Landroid/util/TypedValue;
    :cond_10
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v10, v0

    .restart local v10    # "min":I
    goto/16 :goto_6

    .end local v10    # "min":I
    :cond_11
    const/4 v10, 0x0

    .restart local v10    # "min":I
    goto/16 :goto_6
.end method

.method public onRootViewScrollYChanged(I)V
    .locals 0
    .param p1, "rootScrollY"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewTranslations()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_1

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    :cond_3
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateWindowResizeState()V

    :cond_0
    return-void
.end method

.method public setBackgroundFallback(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWillNotDraw(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setFloatingMenuEnabled(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*FMB* setFloatingMenuEnabled enable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFloatingMenuBtn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    const v3, 0x108094e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/PhoneWindow$DecorView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$3;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$4;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$5;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    .local v0, "bottomMargin":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x55

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v0    # "bottomMargin":I
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .local v1, "changed":Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .local v5, "framePadding":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawingBounds":Landroid/graphics/Rect;
    .end local v3    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method public setSurfaceFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    .prologue
    const/16 v1, 0x80

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    goto :goto_0
.end method

.method public setSurfaceType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->access$1602(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->access$1702(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_2
    return v1

    .end local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_0

    .restart local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1700(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1700(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startChanging()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .end local v0    # "action":I
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V
    .locals 14
    .param p1, "state"    # Lcom/android/internal/policy/PhoneWindow$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "rightMargin"    # I
    .param p7, "animate"    # Z

    .prologue
    if-lez p4, :cond_3

    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->systemUiHideFlag:I

    and-int v10, v10, p2

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v11, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->hideWindowFlag:I

    and-int/2addr v10, v11

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, -0x80000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    iget-boolean v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    if-eqz v10, :cond_4

    const/high16 v10, -0x1000000

    and-int v10, v10, p3

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v11, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->translucentFlag:I

    and-int/2addr v10, v11

    if-nez v10, :cond_4

    const/4 v6, 0x1

    .local v6, "show":Z
    :goto_1
    const/4 v9, 0x0

    .local v9, "visibilityChanged":Z
    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .local v7, "view":Landroid/view/View;
    if-eqz p5, :cond_5

    const/4 v4, -0x1

    .local v4, "resolvedHeight":I
    :goto_2
    if-eqz p5, :cond_6

    move/from16 v5, p4

    .local v5, "resolvedWidth":I
    :goto_3
    if-eqz p5, :cond_7

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->horizontalGravity:I

    .local v3, "resolvedGravity":I
    :goto_4
    if-nez v7, :cond_8

    if-eqz v6, :cond_0

    new-instance v7, Landroid/view/View;

    .end local v7    # "view":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v7    # "view":Landroid/view/View;
    iput-object v7, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->id:I

    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    const/4 v9, 0x1

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    const/4 v10, 0x0

    iput v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_5
    if-eqz v9, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p7, :cond_e

    if-eqz v6, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_6
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    if-ne p1, v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z
    invoke-static {v10}, Lcom/android/internal/policy/PhoneWindow;->access$2100(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I
    invoke-static {v10}, Lcom/android/internal/policy/PhoneWindow;->access$2000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v10

    const v11, -0x50506

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/util/GeneralUtil;->isDeviceDefault(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    invoke-direct {v10, p0, v6}, Lcom/android/internal/policy/PhoneWindow$DecorView$2;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Z)V

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .end local v3    # "resolvedGravity":I
    .end local v4    # "resolvedHeight":I
    .end local v5    # "resolvedWidth":I
    .end local v6    # "show":Z
    .end local v7    # "view":Landroid/view/View;
    .end local v9    # "visibilityChanged":Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_1

    .restart local v6    # "show":Z
    .restart local v7    # "view":Landroid/view/View;
    .restart local v9    # "visibilityChanged":Z
    :cond_5
    move/from16 v4, p4

    goto/16 :goto_2

    .restart local v4    # "resolvedHeight":I
    :cond_6
    const/4 v5, -0x1

    goto/16 :goto_3

    .restart local v5    # "resolvedWidth":I
    :cond_7
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->verticalGravity:I

    goto/16 :goto_4

    .restart local v3    # "resolvedGravity":I
    :cond_8
    if-eqz v6, :cond_b

    const/4 v8, 0x0

    .local v8, "vis":I
    :goto_7
    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    if-eq v10, v8, :cond_c

    const/4 v9, 0x1

    :goto_8
    iput v8, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v10, v4, :cond_9

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v10, v5, :cond_9

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v10, v3, :cond_9

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v0, p6

    if-eq v10, v0, :cond_a

    :cond_9
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v0, p6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    if-eqz v6, :cond_0

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_5

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "vis":I
    :cond_b
    const/4 v8, 0x4

    goto :goto_7

    .restart local v8    # "vis":I
    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    .end local v8    # "vis":I
    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    new-instance v11, Lcom/android/internal/policy/PhoneWindow$DecorView$1;

    invoke-direct {v11, p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/policy/PhoneWindow$ColorViewState;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_6

    :cond_e
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    if-eqz v6, :cond_f

    const/4 v10, 0x0

    :goto_9
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_f
    const/4 v10, 0x4

    goto :goto_9
.end method

.method updateWindowResizeState()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->hackTurnOffWindowResizeAnim(Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
