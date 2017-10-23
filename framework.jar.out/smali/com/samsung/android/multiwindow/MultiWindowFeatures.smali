.class public Lcom/samsung/android/multiwindow/MultiWindowFeatures;
.super Ljava/lang/Object;
.source "MultiWindowFeatures.java"


# static fields
.field public static final DESKTOPMODE_ENABLED:Z = false

.field public static final MULTIWINDOW_ENABLED:Z = false

.field public static final SELECTIVE1ORIENTATION_ENABLED:Z

.field private static final SUPPORT_BEZEL_UI:J = 0x10000L

.field private static final SUPPORT_CENTERBAR_CLICK_SOUND:J = 0x80000L

.field private static final SUPPORT_COMMON_UI:J = 0x400L

.field private static final SUPPORT_FIXED_SPLIT_VIEW:J = 0x8L

.field private static final SUPPORT_FREESTYLE:J = 0x2L

.field private static final SUPPORT_FREESTYLE_DOCKING:J = 0x10L

.field private static final SUPPORT_FREESTYLE_LAUNCH:J = 0x20L

.field private static final SUPPORT_MINIMIZE_ANIMATION:J = 0x2000L

.field private static final SUPPORT_MULTIWINDOW:J = 0x1L

.field private static final SUPPORT_MULTIWINDOW_LAUNCH:J = 0x80L

.field private static final SUPPORT_MULTI_INSTANCE:J = 0x200L

.field private static final SUPPORT_QUADVIEW:J = 0x4L

.field private static final SUPPORT_RECENT_UI:J = 0x1000L

.field private static final SUPPORT_SCALE_WINDOW:J = 0x40L

.field private static final SUPPORT_SELECTIVE_1_ORIENTATION:J = 0x20000L

.field private static final SUPPORT_SIMPLIFICATION_UI:J = 0x8000L

.field private static final SUPPORT_SPLIT_FULLSCREEN:J = 0x100L

.field private static final SUPPORT_STYLE_TRANSITION:J = 0x800L

.field private static final SUPPORT_STYLE_TRANSITION_FROM_CENTERBAR:J = 0x40000L

.field private static final SUPPORT_TAB_PEN_WINDOW:J = 0x4000L

.field private static sEnabledFeaturesFlags:J

.field private static sQueriedTypeMultiWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMultiWindowFeature(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    return-void
.end method

.method public static getEnabledFeaturesFlags(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 56
    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    return-wide v0
.end method

.method private static isEnabled(J)Z
    .locals 4
    .param p0, "feature"    # J

    .prologue
    .line 51
    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportBezelUI(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 354
    const-wide/32 v0, 0x10000

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportCenterbarClickSound(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 385
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportCommonUI(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 306
    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFixedSplitView(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 266
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyle(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 228
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyleDocking(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 274
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyleLaunch(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 282
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMinimizeAnimation(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 330
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiInstance(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 238
    const-wide/16 v0, 0x200

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiWindow(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 218
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiWindowLaunch(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 290
    const-wide/16 v0, 0x80

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportOpenTheme(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportQuadView(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 248
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportRecentUI(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 322
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportScaleWindow(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 258
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSelective1Orientation(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 369
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSimplificationUI(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 346
    const-wide/32 v0, 0x8000

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSplitFullScreen(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 298
    const-wide/16 v0, 0x100

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportStyleTransition(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 314
    const-wide/16 v0, 0x800

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportStyleTransitionFromCenterBar(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 377
    const-wide/32 v0, 0x40000

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportTabPenWindow(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 338
    const-wide/16 v0, 0x4000

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method
