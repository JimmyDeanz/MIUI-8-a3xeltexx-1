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
    .line 2569
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 2570
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2490
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2495
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2497
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2499
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2501
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2526
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

    .line 2533
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

    .line 2542
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDisableSpenGesture:I

    .line 2550
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mSpenUspLevel:I

    .line 2552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    .line 2553
    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 2555
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    .line 2556
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 2557
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    .line 2559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    .line 2560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    .line 2561
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    .line 2563
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    .line 3856
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I

    .line 3857
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I

    .line 3858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

    .line 3859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

    .line 3860
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuLastUpdateTime:J

    .line 2571
    iput p3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    .line 2573
    const v0, 0x10c000e

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 2575
    const v0, 0x10c000f

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 2578
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    .line 2582
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_pen_gesture"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDisableSpenGesture:I

    .line 2586
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 2587
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_0

    .line 2588
    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mSpenUspLevel:I

    .line 2593
    :cond_0
    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedPos:[I

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuTouchedButtonPos:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/PhoneWindow$DecorView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/PhoneWindow$DecorView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # J

    .prologue
    .line 2488
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 2488
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 2488
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 2488
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/WindowInsets;
    .param p2, "x2"    # Z

    .prologue
    .line 2488
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3267
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v0, :cond_0

    .line 3268
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 3269
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 3271
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3272
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    .line 3273
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3275
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3277
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 3279
    :cond_2
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .locals 1

    .prologue
    .line 3257
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3258
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 3261
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 3262
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 3264
    :cond_1
    return-void
.end method

.method private createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .prologue
    .line 3993
    sparse-switch p1, :sswitch_data_0

    .line 3996
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 4000
    :goto_0
    return-object v0

    .line 3998
    :sswitch_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0

    .line 4000
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, p3, p2, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;Z)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0

    .line 3993
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
    .line 4146
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
    .line 4151
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 4152
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 4154
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V

    .line 4155
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1, p3}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Z)V

    .line 4157
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 4158
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$8;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView$8;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 4166
    return-object v0
.end method

.method private createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 12
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4015
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    .line 4016
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupPrimaryActionMode()V

    .line 4017
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v7, :cond_0

    .line 4018
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4020
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 4021
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 4022
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v7, 0x1010431

    invoke-virtual {v2, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4025
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_2

    .line 4026
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 4027
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 4028
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 4030
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4031
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 4036
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_0
    new-instance v7, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 4037
    new-instance v7, Landroid/widget/PopupWindow;

    const v10, 0x1160020

    invoke-direct {v7, v0, v4, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 4039
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4041
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4042
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4044
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v10, 0x10102eb

    invoke-virtual {v7, v10, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4046
    iget v7, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 4048
    .local v3, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 4049
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4050
    new-instance v7, Lcom/android/internal/policy/PhoneWindow$DecorView$6;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$6;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 4091
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v3    # "height":I
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_1

    .line 4092
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 4093
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

    .line 4098
    :cond_1
    return-object v4

    .line 4033
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto :goto_0

    .line 4084
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_3
    const v7, 0x102047d

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 4086
    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    .line 4087
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_1

    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_4
    move v7, v9

    .line 4093
    goto :goto_2
.end method

.method private drawableChanged()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 3656
    iget-boolean v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    if-eqz v5, :cond_1

    .line 3713
    :cond_0
    :goto_0
    return-void

    .line 3660
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

    .line 3663
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestLayout()V

    .line 3664
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->invalidate()V

    .line 3666
    const/4 v4, -0x1

    .line 3672
    .local v4, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3673
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3674
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 3675
    if-nez v2, :cond_3

    .line 3676
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 3709
    :cond_2
    :goto_1
    iput v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 3710
    iget v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_0

    .line 3711
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/PhoneWindow;->access$2400(Lcom/android/internal/policy/PhoneWindow;I)V

    goto :goto_0

    .line 3677
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

    .line 3681
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 3682
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 3685
    .local v1, "bop":I
    if-eq v3, v10, :cond_4

    if-ne v1, v10, :cond_5

    .line 3686
    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    .line 3687
    :cond_5
    if-nez v3, :cond_6

    .line 3688
    move v4, v1

    goto :goto_1

    .line 3689
    :cond_6
    if-nez v1, :cond_7

    .line 3690
    move v4, v3

    goto :goto_1

    .line 3692
    :cond_7
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_1

    .line 3700
    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_8
    const/4 v4, -0x3

    goto :goto_1
.end method

.method private endOnGoingFadeAnimation()V
    .locals 1

    .prologue
    .line 4102
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 4103
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 4105
    :cond_0
    return-void
.end method

.method private isFloatingMenuEnabled()Z
    .locals 1

    .prologue
    .line 3984
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3985
    const/4 v0, 0x1

    .line 3987
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

    .line 2857
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

    .line 4005
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 4006
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    .line 4012
    :cond_0
    :goto_0
    return-void

    .line 4007
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 4008
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V

    goto :goto_0

    .line 4009
    :cond_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 4010
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V

    goto :goto_0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 4170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V

    .line 4171
    return-void
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "isSamsung"    # Z

    .prologue
    .line 4174
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 4175
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 4176
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    .line 4177
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4178
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4180
    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 4108
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    .line 4109
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 4110
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4111
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 4112
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4113
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 4140
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 4142
    return-void

    .line 4115
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 4116
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$7;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4138
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 4115
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
    .line 3212
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    .line 3213
    .local v2, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v1, 0x0

    .line 3214
    .local v1, "mode":Landroid/view/ActionMode;
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3216
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v2, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3228
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    .line 3229
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    if-nez v3, :cond_3

    .line 3230
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupPrimaryActionMode()V

    .line 3231
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 3246
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

    .line 3248
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 3253
    :cond_2
    :goto_2
    return-object v1

    .line 3217
    :catch_0
    move-exception v0

    .line 3219
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_0

    .line 3221
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    .line 3232
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

    .line 3233
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 3234
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 3236
    :cond_5
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 3239
    :cond_6
    invoke-direct {p0, p3, v2, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v1

    .line 3240
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3241
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_1

    .line 3243
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 3249
    :catch_1
    move-exception v3

    goto :goto_2

    .line 3222
    .restart local v0    # "ame":Ljava/lang/AbstractMethodError;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private updateColorViewTranslations()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3547
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3548
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3549
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_3

    int-to-float v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3551
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3552
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_1

    int-to-float v2, v0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3554
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 3549
    goto :goto_0
.end method

.method private updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 26
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .prologue
    .line 3345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 3346
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWindowSystemUiVisibility()I

    move-result v3

    or-int v4, v2, v3

    .line 3348
    .local v4, "sysUiVisibility":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$1800(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3349
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v20, 0x1

    .line 3350
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

    .line 3352
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    .line 3354
    if-eqz p1, :cond_0

    .line 3355
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    .line 3357
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 3359
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    .line 3365
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v23, 0x1

    .line 3366
    .local v23, "hasTopStableInset":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    move/from16 v0, v23

    if-eq v0, v2, :cond_a

    const/4 v2, 0x1

    :goto_3
    or-int v20, v20, v2

    .line 3367
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    .line 3369
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    if-eqz v2, :cond_b

    const/16 v21, 0x1

    .line 3370
    .local v21, "hasBottomStableInset":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    move/from16 v0, v21

    if-eq v0, v2, :cond_c

    const/4 v2, 0x1

    :goto_5
    or-int v20, v20, v2

    .line 3371
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    .line 3373
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    if-eqz v2, :cond_d

    const/16 v22, 0x1

    .line 3374
    .local v22, "hasRightStableInset":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    move/from16 v0, v22

    if-eq v0, v2, :cond_e

    const/4 v2, 0x1

    :goto_7
    or-int v20, v20, v2

    .line 3375
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    .line 3378
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

    .line 3379
    .local v7, "navBarToRightEdge":Z
    :goto_8
    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    .line 3380
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

    .line 3384
    if-eqz v7, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    if-eqz v2, :cond_12

    const/16 v25, 0x1

    .line 3386
    .local v25, "statusBarNeedsRightInset":Z
    :goto_b
    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    .line 3387
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

    .line 3396
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

    .line 3402
    .local v19, "consumingNavBar":Z
    :goto_d
    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    move/from16 v18, v0

    .line 3403
    .local v18, "consumedRight":I
    :goto_e
    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    move/from16 v17, v0

    .line 3405
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

    .line 3407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3408
    .local v24, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    move-object/from16 v0, v24

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_4

    .line 3409
    :cond_3
    move/from16 v0, v18

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3410
    move/from16 v0, v17

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3413
    if-nez p1, :cond_4

    .line 3416
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestApplyInsets()V

    .line 3419
    :cond_4
    if-eqz p1, :cond_5

    .line 3420
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

    .line 3428
    .end local v24    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    if-eqz p1, :cond_6

    .line 3429
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 3431
    :cond_6
    return-object p1

    .line 3349
    .end local v17    # "consumedBottom":I
    .end local v18    # "consumedRight":I
    .end local v19    # "consumingNavBar":Z
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 3350
    .restart local v20    # "disallowAnimate":Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3365
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 3366
    .restart local v23    # "hasTopStableInset":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 3369
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 3370
    .restart local v21    # "hasBottomStableInset":Z
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 3373
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 3374
    .restart local v22    # "hasRightStableInset":Z
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 3378
    .end local v21    # "hasBottomStableInset":Z
    .end local v22    # "hasRightStableInset":Z
    .end local v23    # "hasTopStableInset":Z
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 3379
    .restart local v7    # "navBarToRightEdge":Z
    :cond_10
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    goto/16 :goto_9

    .line 3380
    .restart local v6    # "navBarSize":I
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 3384
    :cond_12
    const/16 v25, 0x0

    goto/16 :goto_b

    .line 3386
    .restart local v25    # "statusBarNeedsRightInset":Z
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 3396
    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v20    # "disallowAnimate":Z
    .end local v25    # "statusBarNeedsRightInset":Z
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_d

    .line 3402
    .restart local v19    # "consumingNavBar":Z
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_e

    .line 3403
    .restart local v18    # "consumedRight":I
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_f
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)V
    .locals 8
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3628
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_1

    .line 3630
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3631
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 3632
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3634
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3635
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3639
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    if-nez v2, :cond_2

    .line 3640
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    .line 3641
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    const v4, 0x1060032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3643
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

    .line 3653
    :cond_1
    :goto_0
    return-void

    .line 3648
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3649
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3650
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 13
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3557
    const/4 v6, 0x0

    .line 3559
    .local v6, "showStatusGuard":Z
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_3

    .line 3560
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_3

    .line 3562
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3564
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    .line 3565
    .local v2, "mlpChanged":Z
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3566
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$2200(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_0

    .line 3567
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Lcom/android/internal/policy/PhoneWindow;->access$2202(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3569
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$2200(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3573
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 3574
    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 3575
    .local v3, "newMargin":I
    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v3, :cond_1

    .line 3576
    const/4 v2, 0x1

    .line 3577
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3579
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v7, :cond_6

    .line 3580
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    .line 3581
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    const v9, 0x1060032

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3583
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

    .line 3598
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_7

    const/4 v6, 0x1

    .line 3604
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$2300(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_8

    const/4 v4, 0x1

    .line 3606
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

    .line 3615
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    .line 3616
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3620
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 3621
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_b

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3623
    :cond_4
    return-object p1

    .line 3574
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 3587
    .restart local v3    # "newMargin":I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3589
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v8, :cond_1

    .line 3590
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3591
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3598
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 3604
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 3606
    .restart local v4    # "nonOverlay":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 3610
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_2

    .line 3611
    const/4 v2, 0x1

    .line 3612
    const/4 v7, 0x0

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5

    .line 3621
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
    .line 2814
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2815
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

    .line 2681
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 2682
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2683
    .local v0, "action":I
    if-nez v0, :cond_1

    move v3, v5

    .line 2685
    .local v3, "isDown":Z
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 2688
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

    .line 2689
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2690
    .local v2, "handled":Z
    if-eqz v2, :cond_2

    .line 2726
    .end local v2    # "handled":Z
    :cond_0
    :goto_1
    return v5

    .end local v3    # "isDown":Z
    :cond_1
    move v3, v6

    .line 2683
    goto :goto_0

    .line 2697
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

    .line 2698
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v8}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v8

    # invokes: Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v7, v8, v4, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->access$1200(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2704
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2705
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 2706
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_4

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v7, :cond_4

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2708
    .restart local v2    # "handled":Z
    :goto_2
    if-eqz v2, :cond_5

    .line 2709
    const/16 v7, 0x52

    if-ne v4, v7, :cond_0

    if-nez v3, :cond_0

    .line 2710
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7, v6}, Lcom/android/internal/policy/PhoneWindow;->access$1002(Lcom/android/internal/policy/PhoneWindow;I)I

    goto :goto_1

    .line 2706
    .end local v2    # "handled":Z
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 2726
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

    .line 2734
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2735
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

    .line 2737
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    .line 2738
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2739
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v4

    iput-boolean v3, v4, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 2767
    :cond_0
    :goto_0
    return v3

    .line 2746
    .end local v1    # "handled":Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2747
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

    .line 2749
    .restart local v1    # "handled":Z
    :goto_1
    if-nez v1, :cond_0

    .line 2757
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v5, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->access$1300(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2758
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-nez v5, :cond_2

    .line 2759
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 2760
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    # invokes: Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v2, v6, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->access$1200(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2762
    iput-boolean v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 2763
    if-nez v1, :cond_0

    :cond_2
    move v3, v4

    .line 2767
    goto :goto_0

    .line 2747
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
    .line 2991
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2992
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2993
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2994
    const/4 v1, 0x1

    .line 2997
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

    .line 2773
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mSpenUspLevel:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 2774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2775
    .local v0, "action":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2776
    packed-switch v0, :pswitch_data_0

    .line 2800
    .end local v0    # "action":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 2801
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

    .line 2778
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .restart local v0    # "action":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 2779
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    .line 2780
    const/16 v2, 0xd3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 2782
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    goto :goto_0

    .line 2786
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_0

    .line 2787
    const/16 v2, 0xd5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 2790
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_2

    .line 2791
    const/16 v2, 0xd4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2792
    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mIsPenSelectionMode:Z

    goto :goto_0

    .line 2801
    .end local v0    # "action":I
    .restart local v1    # "cb":Landroid/view/Window$Callback;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 2776
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
    .line 2807
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2808
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
    .line 3158
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3160
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3161
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3163
    :cond_0
    return-void
.end method

.method protected drawKnoxBadge(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, -0x1

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 2608
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

    .line 2634
    :cond_0
    :goto_0
    return-void

    .line 2610
    :cond_1
    invoke-static {}, Landroid/os/PersonaManager;->isKnoxMultiwindowsSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2612
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

    .line 2616
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_2

    .line 2617
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    # setter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7, v8}, Lcom/android/internal/policy/PhoneWindow;->access$802(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2619
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getMeasuredWidth()I

    move-result v6

    .line 2620
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getMeasuredHeight()I

    move-result v3

    .line 2621
    .local v3, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2622
    .local v1, "badgeW":I
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2624
    .local v0, "badgeH":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 2625
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2626
    .local v2, "bounds":Landroid/graphics/Rect;
    int-to-float v7, v0

    int-to-float v8, v3

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v4, v7, v8

    .line 2627
    .local v4, "resizedHeight":F
    int-to-float v7, v1

    int-to-float v8, v6

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v5, v7, v8

    .line 2628
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

    .line 2632
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

    .line 2630
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
    .line 3286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    .line 3287
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    .line 3288
    return-void
.end method

.method protected getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const v4, 0x10803f8

    .line 2637
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2638
    .local v0, "mUm":Landroid/os/UserManager;
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "knox_name"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2639
    .local v1, "userName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2640
    sget-object v2, Landroid/os/PersonaManager;->SECOND_KNOX_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2641
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2646
    :goto_0
    return-object v2

    .line 2643
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 2646
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
    .line 3341
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3330
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3331
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3332
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)V

    .line 3333
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3334
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    .line 3336
    :cond_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3746
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3748
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 3750
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3751
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_0

    .line 3752
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 3755
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3763
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2500(Lcom/android/internal/policy/PhoneWindow;)V

    .line 3767
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->isFloatingMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3769
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 3770
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3772
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setFloatingMenuEnabled(Z)V

    .line 3785
    .end local v1    # "rootView":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 3776
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

    .line 3777
    const-string v2, "PhoneWindow"

    const-string v3, "Change the child order of the floating menu button."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    .line 3780
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3820
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    .line 3821
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 3823
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2652
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2655
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v4

    const v5, 0x10809f7

    if-ne v4, v5, :cond_1

    .line 2656
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2657
    .local v0, "currWindowBackground":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 2658
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 2659
    .local v2, "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v3

    .line 2660
    .local v3, "states":[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 2661
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2662
    .local v1, "newBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2663
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2677
    .end local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "newBackground":Landroid/graphics/drawable/Drawable;
    .end local v2    # "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    .end local v3    # "states":[I
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v4

    const v5, 0x10809f5

    if-ne v4, v5, :cond_0

    .line 2668
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2669
    .restart local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 2670
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2671
    .restart local v1    # "newBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2672
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3789
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3791
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3792
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_0

    .line 3793
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 3796
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3797
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 3800
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    .line 3801
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3802
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3803
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3805
    :cond_2
    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 3807
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v2, :cond_4

    .line 3808
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 3809
    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 3812
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v2, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->access$1300(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3813
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_5

    .line 3814
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 3816
    :cond_5
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 2602
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2603
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

    .line 2604
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2864
    const-string/jumbo v6, "sugar"

    const-string/jumbo v7, "ro.build.scafe.syrup"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 2865
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2867
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 2868
    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->setWACOMPen(Z)V

    .line 2869
    # setter for: Lcom/android/internal/policy/PhoneWindow;->penState:Z
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$1402(Z)Z

    .line 2879
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDisableSpenGesture:I

    if-nez v6, :cond_1

    .line 2880
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-ne v6, v8, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_1

    .line 2883
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v7, 0xd4

    if-ne v6, v7, :cond_1

    .line 2884
    const/16 v6, 0xd6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2894
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2895
    .local v0, "action":I
    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v6, :cond_3

    .line 2896
    if-nez v0, :cond_3

    .line 2897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 2898
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 2899
    .local v3, "y":I
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2900
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2907
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_1
    return v4

    .line 2871
    .end local v0    # "action":I
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 2872
    invoke-virtual {v1, v5}, Landroid/view/inputmethod/InputMethodManager;->setWACOMPen(Z)V

    .line 2873
    # setter for: Lcom/android/internal/policy/PhoneWindow;->penState:Z
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$1402(Z)Z

    goto :goto_0

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v0    # "action":I
    :cond_3
    move v4, v5

    .line 2907
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
    .line 3146
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 3147
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getOutsets(Landroid/graphics/Rect;)V

    .line 3148
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 3149
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->offsetLeftAndRight(I)V

    .line 3151
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_1

    .line 3152
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->offsetTopAndBottom(I)V

    .line 3154
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 3046
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 3047
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    const/4 v7, 0x1

    .line 3049
    .local v7, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 3050
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 3052
    .local v5, "heightMode":I
    const/4 v2, 0x0

    .line 3053
    .local v2, "fixedWidth":Z
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 3054
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 3055
    .local v14, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v14, :cond_0

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 3057
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 3058
    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 3065
    .local v15, "w":I
    :goto_2
    if-lez v15, :cond_0

    .line 3066
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 3067
    .local v18, "widthSize":I
    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3069
    const/4 v2, 0x1

    .line 3074
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    .end local v18    # "widthSize":I
    :cond_0
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v5, v0, :cond_1

    .line 3075
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 3076
    .local v13, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v13, :cond_1

    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 3078
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 3079
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v3, v0

    .line 3085
    .local v3, "h":I
    :goto_4
    if-lez v3, :cond_1

    .line 3086
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 3087
    .local v6, "heightSize":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3093
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

    .line 3094
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

    .line 3095
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 3096
    .local v11, "mode":I
    if-eqz v11, :cond_3

    .line 3097
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 3098
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

    .line 3102
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

    .line 3103
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 3104
    .restart local v11    # "mode":I
    if-eqz v11, :cond_5

    .line 3105
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 3106
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

    .line 3111
    .end local v11    # "mode":I
    .end local v16    # "width":I
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3113
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getMeasuredWidth()I

    move-result v16

    .line 3114
    .restart local v16    # "width":I
    const/4 v8, 0x0

    .line 3116
    .local v8, "measure":Z
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3118
    if-nez v2, :cond_6

    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 3119
    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 3120
    .local v12, "tv":Landroid/util/TypedValue;
    :goto_5
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 3122
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 3123
    invoke-virtual {v12, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 3130
    .local v10, "min":I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v10, :cond_6

    .line 3131
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3132
    const/4 v8, 0x1

    .line 3139
    .end local v10    # "min":I
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_6
    if-eqz v8, :cond_7

    .line 3140
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3142
    :cond_7
    return-void

    .line 3047
    .end local v2    # "fixedWidth":Z
    .end local v5    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v16    # "width":I
    .end local v17    # "widthMode":I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3054
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

    .line 3059
    .restart local v14    # "tvw":Landroid/util/TypedValue;
    :cond_a
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 3060
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

    .line 3062
    .end local v15    # "w":I
    :cond_b
    const/4 v15, 0x0

    .restart local v15    # "w":I
    goto/16 :goto_2

    .line 3075
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_3

    .line 3080
    .restart local v13    # "tvh":Landroid/util/TypedValue;
    :cond_d
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 3081
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

    .line 3083
    .end local v3    # "h":I
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 3119
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

    .line 3124
    .restart local v12    # "tv":Landroid/util/TypedValue;
    :cond_10
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 3125
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

    .line 3127
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
    .line 3848
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3849
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .line 3850
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2853
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3717
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 3721
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

    .line 3722
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 3725
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3726
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_1

    .line 3727
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 3730
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 3731
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 3733
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    .line 3734
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 3736
    :cond_3
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 3324
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3325
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2987
    :goto_0
    return-void

    .line 2978
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

    .line 2983
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 2985
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3304
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3305
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3306
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 3308
    :cond_0
    return-void
.end method

.method public setBackgroundFallback(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 2596
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2597
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

    .line 2598
    return-void

    .line 2596
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2597
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

    .line 3864
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

    .line 3865
    if-eqz p1, :cond_2

    .line 3866
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 3867
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3981
    :cond_0
    :goto_0
    return-void

    .line 3869
    :cond_1
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    .line 3870
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    const v3, 0x108094e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3871
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3872
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 3873
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3874
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/PhoneWindow$DecorView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$3;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3955
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$4;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

    .line 3960
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$5;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

    .line 3967
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

    .line 3970
    .local v0, "bottomMargin":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3971
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x55

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3972
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3973
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3977
    .end local v0    # "bottomMargin":I
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingMenuBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 3978
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
    .line 3002
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .line 3003
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 3004
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 3005
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3007
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3008
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 3009
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 3010
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 3011
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 3012
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 3013
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 3014
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3015
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 3016
    .local v5, "framePadding":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 3017
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 3018
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 3019
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 3022
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3023
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 3024
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3041
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
    .line 3838
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    .line 3839
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    .prologue
    const/16 v1, 0x80

    .line 3842
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    .line 3844
    :goto_0
    return-void

    .line 3843
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    goto :goto_0
.end method

.method public setSurfaceType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 3834
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 3835
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3291
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3292
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3293
    if-eqz p1, :cond_1

    .line 3294
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3298
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    .line 3300
    :cond_0
    return-void

    .line 3296
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3311
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3312
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3313
    if-eqz p1, :cond_1

    .line 3314
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3318
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    .line 3320
    :cond_0
    return-void

    .line 3316
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3168
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3169
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->access$1602(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 3170
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 3175
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    .line 3177
    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_2

    .line 3178
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 3184
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->access$1702(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 3185
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_2
    return v1

    .line 3172
    .end local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_0

    .line 3179
    .restart local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1700(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3182
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1700(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    goto :goto_1

    .line 3185
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 3202
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
    .line 3207
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 3191
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
    .line 3197
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startChanging()V
    .locals 1

    .prologue
    .line 3282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    .line 3283
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2848
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2821
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2822
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2824
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 2825
    if-ne v0, v1, :cond_0

    .line 2826
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 2832
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
    .line 2836
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2840
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2844
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
    .line 3452
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

    .line 3455
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

    .line 3459
    .local v6, "show":Z
    :goto_1
    const/4 v9, 0x0

    .line 3460
    .local v9, "visibilityChanged":Z
    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 3462
    .local v7, "view":Landroid/view/View;
    if-eqz p5, :cond_5

    const/4 v4, -0x1

    .line 3463
    .local v4, "resolvedHeight":I
    :goto_2
    if-eqz p5, :cond_6

    move/from16 v5, p4

    .line 3464
    .local v5, "resolvedWidth":I
    :goto_3
    if-eqz p5, :cond_7

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->horizontalGravity:I

    .line 3466
    .local v3, "resolvedGravity":I
    :goto_4
    if-nez v7, :cond_8

    .line 3467
    if-eqz v6, :cond_0

    .line 3468
    new-instance v7, Landroid/view/View;

    .end local v7    # "view":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v7    # "view":Landroid/view/View;
    iput-object v7, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 3469
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3470
    iget-object v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 3471
    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->id:I

    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    .line 3472
    const/4 v9, 0x1

    .line 3473
    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3474
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 3476
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3478
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3479
    invoke-virtual {p0, v7, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3480
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .line 3499
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_5
    if-eqz v9, :cond_2

    .line 3500
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3501
    if-eqz p7, :cond_e

    .line 3502
    if-eqz v6, :cond_d

    .line 3503
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_1

    .line 3504
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3505
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3507
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

    .line 3527
    :goto_6
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    if-ne p1, v10, :cond_2

    .line 3528
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

    .line 3529
    new-instance v10, Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    invoke-direct {v10, p0, v6}, Lcom/android/internal/policy/PhoneWindow$DecorView$2;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Z)V

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 3542
    :cond_2
    return-void

    .line 3452
    .end local v3    # "resolvedGravity":I
    .end local v4    # "resolvedHeight":I
    .end local v5    # "resolvedWidth":I
    .end local v6    # "show":Z
    .end local v7    # "view":Landroid/view/View;
    .end local v9    # "visibilityChanged":Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3455
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_1

    .restart local v6    # "show":Z
    .restart local v7    # "view":Landroid/view/View;
    .restart local v9    # "visibilityChanged":Z
    :cond_5
    move/from16 v4, p4

    .line 3462
    goto/16 :goto_2

    .line 3463
    .restart local v4    # "resolvedHeight":I
    :cond_6
    const/4 v5, -0x1

    goto/16 :goto_3

    .line 3464
    .restart local v5    # "resolvedWidth":I
    :cond_7
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->verticalGravity:I

    goto/16 :goto_4

    .line 3483
    .restart local v3    # "resolvedGravity":I
    :cond_8
    if-eqz v6, :cond_b

    const/4 v8, 0x0

    .line 3484
    .local v8, "vis":I
    :goto_7
    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    if-eq v10, v8, :cond_c

    const/4 v9, 0x1

    .line 3485
    :goto_8
    iput v8, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 3486
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3487
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

    .line 3489
    :cond_9
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3490
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3491
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3492
    move/from16 v0, p6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3493
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3495
    :cond_a
    if-eqz v6, :cond_0

    .line 3496
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 3483
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "vis":I
    :cond_b
    const/4 v8, 0x4

    goto :goto_7

    .line 3484
    .restart local v8    # "vis":I
    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    .line 3510
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

    .line 3523
    :cond_e
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3524
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
    .line 3739
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3740
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

    .line 3742
    return-void

    .line 3740
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .prologue
    .line 3830
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
    .line 3826
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
