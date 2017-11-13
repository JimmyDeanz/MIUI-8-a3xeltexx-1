.class public Lcom/android/server/am/MultiWindowPolicy;
.super Ljava/lang/Object;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowPolicy$TaskController;,
        Lcom/android/server/am/MultiWindowPolicy$ZoneRects;,
        Lcom/android/server/am/MultiWindowPolicy$H;
    }
.end annotation


# static fields
.field private static final ACTION_MINIMIZE_ALL:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL"

.field private static final ACTION_TIMER_STARTED_IN_ALERT:Ljava/lang/String; = "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

.field private static final ALARM_ALERT_FROM_ALARM:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

.field private static final DEBUG:Z = false

.field private static final GLANCEVIEW_LAUNCH_ACTION:Ljava/lang/String; = "com.android.settings.LaunchGlanceView"

.field public static LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I = 0x0

.field public static LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I = 0x0

.field static final SAFE_DEBUG:Z

.field public static final SPLIT_DIM_AMOUNT:F = 0.5f

.field private static final TAB_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowPolicy"

.field private static final TASKCONTROLLER_DEBUG:Z

.field public static sExposuerTitleBarMenu:Z

.field public static sStatusBarHeight:I

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCenterBarPoints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDefDesktopScale:F

.field private mDefaultScale:F

.field mDensityDpi:I

.field mDesktopManager:Lcom/samsung/android/desktop/DesktopManager;

.field private mDiffUserPenWindowCnt:I

.field mDisplayZoneRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/MultiWindowPolicy$ZoneRects;",
            ">;"
        }
    .end annotation
.end field

.field mFeatureMultiwindowRecentUI:Z

.field mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field final mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

.field private mIsolatedPoint:Landroid/graphics/Point;

.field mMaxDesktopScale:F

.field mMaxDesktopSelectiveScale:F

.field private mMaxScale:F

.field mMinDesktopScale:F

.field private mMinScale:F

.field private mMultiInstanceMaxCnt:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRegisteredTaskControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/MultiWindowPolicy$TaskController;",
            ">;"
        }
    .end annotation
.end field

.field mSelectiveScale:F

.field private mSettingContentObserver:Landroid/database/ContentObserver;

.field private mTabFrontStack:I

.field private mTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateTaskToReturnToFrozen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I

    const/4 v0, 0x4

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I

    sput v1, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    sput-boolean v2, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iput-boolean v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mFeatureMultiwindowRecentUI:Z

    iput-boolean v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mUpdateTaskToReturnToFrozen:Z

    iput v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    iput v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    iput v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    iput v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mSelectiveScale:F

    iput v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mMinDesktopScale:F

    iput v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefDesktopScale:F

    iput v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mMaxDesktopScale:F

    iput v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mMaxDesktopSelectiveScale:F

    new-instance v0, Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowPolicy$H;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iput-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabFrontStack:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/am/MultiWindowPolicy$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiWindowPolicy$3;-><init>(Lcom/android/server/am/MultiWindowPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mSettingContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDisplayZoneRects:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mSelectiveScale:F

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mFeatureMultiwindowRecentUI:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDensityDpi:I

    return-void

    :cond_2
    sget v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    goto/16 :goto_0
.end method

.method private RecentTaskInfoToObject(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "idx":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .local v1, "r":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "r":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_0
    return-object v2
.end method

.method private TaskInfoToObject(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "idx":I
    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;

    .local v1, "t":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    sget v4, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    if-ne p2, v4, :cond_0

    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->id:I

    iput v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->id:I

    iput v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    sget v4, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    if-ne p2, v4, :cond_1

    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    :goto_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    .end local v1    # "t":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    return-object v3
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowPolicy;->isWhiteTheme()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiWindowPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDiffUserPenWindowCnt:I

    return v0
.end method

.method static synthetic access$300()Landroid/widget/Toast;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/am/MultiWindowPolicy;->toastAlert:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    sput-object p0, Lcom/android/server/am/MultiWindowPolicy;->toastAlert:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiWindowPolicy;)Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MultiWindowPolicy;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiWindowPolicy;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->RecentTaskInfoToObject(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiWindowPolicy;Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V

    return-void
.end method

.method private adjustFloatingBounds(Lcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v5

    .local v5, "preferredOr":I
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .local v6, "requestBounds":Landroid/graphics/Rect;
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFixedOrientation(I)Z

    move-result v10

    if-nez v10, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    if-ge v10, v11, :cond_2

    move v3, v8

    .local v3, "isDisplayPortrait":Z
    :goto_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v10, v11, :cond_3

    move v4, v8

    .local v4, "isStackPortrait":Z
    :goto_1
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    .local v0, "defaultScale":F
    if-eq v3, v4, :cond_1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v7, "tmpBounds":Landroid/graphics/Rect;
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    sget-boolean v8, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "MultiWindowPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adjustFloating, r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", requested="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", adjusted="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "defaultScale":F
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "displaySize":Landroid/graphics/Point;
    .end local v3    # "isDisplayPortrait":Z
    .end local v4    # "isStackPortrait":Z
    .end local v7    # "tmpBounds":Landroid/graphics/Rect;
    :cond_1
    return-void

    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "displaySize":Landroid/graphics/Point;
    :cond_2
    move v3, v9

    goto :goto_0

    .restart local v3    # "isDisplayPortrait":Z
    :cond_3
    move v4, v9

    goto :goto_1
.end method

.method private getHeaderDrawableHeight()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108059b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGamePackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSplitOnly(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.sdk.multiwindowonly.enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .local v1, "talkbackEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWhiteTheme()Z
    .locals 2

    .prologue
    const-string v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "white"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 5
    .param p2, "controller"    # Lcom/samsung/android/multiwindow/ITaskController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/samsung/android/multiwindow/ITaskController;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    .local v2, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_3

    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_2

    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;

    if-eqz v3, :cond_4

    iget v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/MultiWindowPolicy;->TaskInfoToObject(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .local v1, "rtInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v3, v1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskStarted(Ljava/util/List;)V

    goto :goto_1

    .end local v1    # "rtInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v3, p1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskStarted(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    .end local v2    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    :cond_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private updateIsolatedRects(IILandroid/graphics/Rect;)V
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "zone"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x3

    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    .local v3, "iDeviceWidth":I
    iget v2, v1, Landroid/graphics/Point;->y:I

    .local v2, "iDeviceHeight":I
    iget-object v8, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget v5, v8, Landroid/graphics/Point;->x:I

    .local v5, "iWidthBoundary":I
    iget-object v8, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget v4, v8, Landroid/graphics/Point;->y:I

    .local v4, "iHeightBoundary":I
    if-le v3, v2, :cond_1

    const/4 v6, 0x1

    .local v6, "landscape":Z
    :goto_0
    if-eqz v6, :cond_4

    if-ne p2, v9, :cond_2

    invoke-virtual {p3, v7, v7, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void

    .end local v6    # "landscape":Z
    :cond_1
    move v6, v7

    goto :goto_0

    .restart local v6    # "landscape":Z
    :cond_2
    if-ne p2, v10, :cond_3

    invoke-virtual {p3, v5, v7, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v7, v7, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    if-ne p2, v9, :cond_5

    invoke-virtual {p3, v7, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_5
    if-ne p2, v10, :cond_6

    invoke-virtual {p3, v7, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_6
    invoke-virtual {p3, v7, v7, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public RunningTaskInfoToObject(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "idx":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v1, "r":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "r":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_0
    return-object v3
.end method

.method public addTab(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowTab;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustStackBound(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowPolicy;->getHeaderDrawableHeight()I

    move-result v6

    add-int v0, v5, v6

    .local v0, "boundaryX":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050305

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, "boundaryY":I
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowPolicy;->getHeaderDrawableHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .local v4, "headerWindowMargin":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .local v3, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v2

    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    if-le v5, v6, :cond_3

    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v0

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    :goto_0
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    if-le v5, v6, :cond_4

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-ge v5, v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_4
    iget v5, p1, Landroid/graphics/Rect;->top:I

    sget v6, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_2

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sget v6, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    add-int/2addr v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 27
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "updateFocus"    # Z

    .prologue
    sget-boolean v24, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v24, :cond_0

    const-string v24, "MultiWindowPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adjustStackFocus: r="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " multiWindowStyle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "MultiWindowPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adjustStackFocus: sourceRecord="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " callers="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    .local v17, "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v24

    if-nez v24, :cond_1

    if-eqz p2, :cond_20

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v24

    if-eqz v24, :cond_20

    :cond_1
    const/16 v16, -0x1

    .local v16, "stackId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v24

    if-eqz v24, :cond_d

    const/4 v13, 0x0

    .local v13, "source":Landroid/content/Intent;
    const/4 v14, 0x0

    .local v14, "sourceFilter":Landroid/content/Intent$FilterComparison;
    const/16 v19, 0x0

    .local v19, "targetFilter":Landroid/content/Intent$FilterComparison;
    if-eqz p2, :cond_2

    new-instance v13, Landroid/content/Intent;

    .end local v13    # "source":Landroid/content/Intent;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .restart local v13    # "source":Landroid/content/Intent;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v14, Landroid/content/Intent$FilterComparison;

    .end local v14    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    invoke-direct {v14, v13}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .restart local v14    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    :cond_2
    const/16 v23, 0x0

    .local v23, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .local v7, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v24

    if-eqz v24, :cond_3

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v23

    :cond_3
    const/16 v18, 0x0

    .local v18, "target":Landroid/content/Intent;
    if-eqz v23, :cond_4

    new-instance v18, Landroid/content/Intent;

    .end local v18    # "target":Landroid/content/Intent;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .restart local v18    # "target":Landroid/content/Intent;
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v19, Landroid/content/Intent$FilterComparison;

    .end local v19    # "targetFilter":Landroid/content/Intent$FilterComparison;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .restart local v19    # "targetFilter":Landroid/content/Intent$FilterComparison;
    :cond_4
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v16

    const-string v10, "keep-current"

    .local v10, "reason":Ljava/lang/String;
    sget-boolean v24, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v24, :cond_5

    const-string v24, "MultiWindowPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adjustStackFocus: Keep current stack for cascade app (inherit) >> r="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " stackId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    if-eqz p4, :cond_6

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v20

    .end local v7    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "reason":Ljava/lang/String;
    .end local v13    # "source":Landroid/content/Intent;
    .end local v14    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .end local v16    # "stackId":I
    .end local v18    # "target":Landroid/content/Intent;
    .end local v19    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .end local v23    # "topTask":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v20

    .restart local v7    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "source":Landroid/content/Intent;
    .restart local v14    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .restart local v16    # "stackId":I
    .restart local v18    # "target":Landroid/content/Intent;
    .restart local v19    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .restart local v23    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    const/16 v25, 0x2000

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v24

    if-eqz v24, :cond_8

    if-eqz p3, :cond_8

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v16

    const-string v10, "existing-cascade"

    .restart local v10    # "reason":Ljava/lang/String;
    sget-boolean v24, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v24, :cond_5

    const-string v24, "MultiWindowPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adjustStackFocus: Use existing stack for cascade app (inherit) >> r="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " stackId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10    # "reason":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    const/16 v25, 0x2000

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v24

    if-eqz v24, :cond_9

    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->isDocument()Z

    move-result v24

    if-eqz v24, :cond_9

    if-eqz v14, :cond_9

    if-eqz v19, :cond_9

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v16

    const-string v10, "keep-current"

    .restart local v10    # "reason":Ljava/lang/String;
    goto/16 :goto_0

    .end local v10    # "reason":Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/MultiWindowPolicy;->adjustFloatingBounds(Lcom/android/server/am/ActivityRecord;)V

    const/4 v9, 0x0

    .local v9, "isSelectiveState":Z
    sget-boolean v24, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    .local v8, "globalOr":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v0, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToConfigurationOrientation(II)I

    move-result v6

    .local v6, "expectedOr":I
    if-eq v8, v6, :cond_c

    const/4 v9, 0x1

    .end local v6    # "expectedOr":I
    .end local v8    # "globalOr":I
    :cond_a
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(IILandroid/graphics/Rect;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v15

    .local v15, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v16

    :cond_b
    const-string v10, "create-cascade"

    .restart local v10    # "reason":Ljava/lang/String;
    sget-boolean v24, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v24, :cond_5

    const-string v24, "MultiWindowPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adjustStackFocus: New stack for cascade app >> r="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " stackId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10    # "reason":Ljava/lang/String;
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "expectedOr":I
    .restart local v8    # "globalOr":I
    :cond_c
    const/4 v9, 0x0

    goto :goto_2

    .end local v6    # "expectedOr":I
    .end local v7    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "globalOr":I
    .end local v9    # "isSelectiveState":Z
    .end local v13    # "source":Landroid/content/Intent;
    .end local v14    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .end local v18    # "target":Landroid/content/Intent;
    .end local v19    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .end local v23    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_d
    if-eqz p2, :cond_18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    if-eqz v24, :cond_18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v20, v0

    .local v20, "taskStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    if-eqz p4, :cond_e

    const-string v24, "keep-current"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v25

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v24

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I

    move-result v12

    .local v12, "relativeStackId":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .local v11, "relativeStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_1

    .end local v11    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "relativeStackId":I
    :cond_f
    const/4 v4, 0x1

    .local v4, "bSameZone":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .local v22, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v22, :cond_12

    const-string v24, "com.sec.android.app.FlashBarService"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getWindowMode()I

    move-result v24

    if-eqz v24, :cond_12

    :cond_10
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    .local v21, "taskZone":I
    if-nez v21, :cond_11

    const/16 v21, 0xf

    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v24

    and-int v24, v24, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    const/4 v4, 0x1

    .end local v21    # "taskZone":I
    :cond_12
    :goto_3
    if-eqz v22, :cond_18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v24

    if-nez v24, :cond_18

    if-eqz v4, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    if-nez v24, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    :cond_13
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_14

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_18

    :cond_14
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v16

    const-string v10, "reuse-exsiting-task"

    .restart local v10    # "reason":Ljava/lang/String;
    sget-boolean v24, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v24, :cond_15

    const-string v24, "MultiWindowPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adjustStackFocus: Use existing stack for split app >> r="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " stackId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    if-eqz p4, :cond_16

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v20

    goto/16 :goto_1

    .end local v10    # "reason":Ljava/lang/String;
    .restart local v21    # "taskZone":I
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_3

    .end local v4    # "bSameZone":Z
    .end local v20    # "taskStack":Lcom/android/server/am/ActivityStack;
    .end local v21    # "taskZone":I
    .end local v22    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_18
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .local v5, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v5, :cond_19

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v20, v0

    goto/16 :goto_1

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v24

    if-eqz v24, :cond_1a

    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v24

    if-nez v24, :cond_1c

    :cond_1a
    if-eqz p4, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v24

    const-string v25, "use-home"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v20

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I

    move-result v12

    .restart local v12    # "relativeStackId":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .restart local v11    # "relativeStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v15

    .restart local v15    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_1e

    if-eqz p4, :cond_1d

    const-string v24, "exsiting-zone"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    :cond_1d
    :goto_4
    move-object/from16 v20, v15

    goto/16 :goto_1

    :cond_1e
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v16

    sget-boolean v24, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v24, :cond_1f

    const-string v24, "MultiWindowPolicy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adjustStackFocus: New stack r="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " stackId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-eqz p4, :cond_1d

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "create-zone"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    goto :goto_4

    .end local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v11    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "relativeStackId":I
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v16    # "stackId":I
    :cond_20
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeStack()Lcom/android/server/am/ActivityStack;

    move-result-object v20

    goto/16 :goto_1
.end method

.method applyMetaDataMultiWindowOptions(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "targetStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/high16 v2, 0x10000

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .local v0, "appMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_0
    return-void
.end method

.method public applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const v7, -0x8000001

    const/4 v3, 0x0

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v4, :cond_5

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v0, :cond_9

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eq v0, v4, :cond_1

    :cond_0
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v5, 0x80000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_1
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v4, v1, :cond_9

    :cond_2
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/MultiWindowPolicy;->getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v4

    iget v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    if-lt v4, v5, :cond_5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .local v2, "taskAffinity":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .local v1, "newTask":Z
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "newTask":Z
    .end local v2    # "taskAffinity":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_1

    .restart local v2    # "taskAffinity":Ljava/lang/String;
    :cond_8
    move v1, v3

    goto :goto_2

    .end local v2    # "taskAffinity":Ljava/lang/String;
    :cond_9
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    goto :goto_3
.end method

.method public applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 21
    .param p1, "callerRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "calleeRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v10, 0x0

    .local v10, "isMultiWindowLaunch":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x10000000

    and-int v17, v17, v18

    if-eqz v17, :cond_1

    const-string v17, "android"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v17

    if-eqz v17, :cond_4

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v17

    if-nez v17, :cond_4

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->getUserManagerLocked()Lcom/android/server/pm/UserManagerService;

    move-result-object v17

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    .local v16, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/high16 v18, 0x1000000

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    :cond_3
    :goto_2
    return-void

    .end local v16    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v17

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v18

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :goto_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v18

    const v19, -0x10000001

    and-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_0

    .restart local v16    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {}, Landroid/os/PersonaManager;->isKnoxMultiwindowsSupported()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/high16 v18, 0x1000000

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/high16 v18, 0x200000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .local v11, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x1000

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_9

    goto/16 :goto_2

    .end local v11    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowLaunchApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    if-nez v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x10000000

    and-int v17, v17, v18

    if-eqz v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v17

    const/high16 v18, 0x200000

    and-int v17, v17, v18

    if-nez v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x800

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->getPenWindowLaunchScale(Landroid/content/pm/ActivityInfo;)F

    move-result v14

    .local v14, "scale":F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lcom/android/server/am/MultiWindowPolicy;->setFloatingBounds(Lcom/android/server/am/ActivityRecord;F)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .end local v14    # "scale":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "multi_window_enabled"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "open_multi_window_view"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->isInLockTaskMode()Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidLaunchStyleApp(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isMultiWindowLaunchInSame(Landroid/content/Intent;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "audio/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_d

    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_e

    const-string v17, "fb-messenger"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    :cond_d
    const-string v17, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "com.android.gallery.action.SEARCH_VIEW"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "android.intent.action.START_SLINK_PLAYBACK"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "com.sec.android.app.music.intent.action.PLAY_VIA"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    :cond_e
    const/4 v4, 0x1

    .local v4, "clearTask":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-eqz v17, :cond_15

    const/4 v13, 0x0

    .local v13, "sameTask":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .local v7, "extra":Landroid/os/Bundle;
    if-eqz v7, :cond_10

    const-string v17, "android.intent.extra.INTENT"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    .local v15, "selectedIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v5

    .local v5, "currentUserId":I
    const/4 v3, 0x0

    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    const v19, 0x10400

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v15, v1, v2, v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .local v12, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_14

    iget-object v3, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_f
    :goto_4
    if-eqz v3, :cond_10

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/4 v13, 0x1

    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "currentUserId":I
    .end local v7    # "extra":Landroid/os/Bundle;
    .end local v15    # "selectedIntent":Landroid/content/Intent;
    :cond_10
    if-nez v13, :cond_11

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    const/4 v10, 0x1

    .end local v13    # "sameTask":Z
    :cond_11
    :goto_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const/high16 v18, 0x10000000

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v4, :cond_12

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_12

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const v18, 0x8000

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_12
    if-eqz v10, :cond_19

    const/16 v17, 0x0

    const v18, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->updateCenterBarPosition(IF)V

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->updateCenterBarPosition(IF)V

    .end local v4    # "clearTask":Z
    :cond_13
    :goto_6
    if-eqz v10, :cond_3

    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/WindowManagerService;->setLastDrawnFocusedStackFrameIdToSkip(I)V

    goto/16 :goto_2

    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "clearTask":Z
    .restart local v5    # "currentUserId":I
    .restart local v7    # "extra":Landroid/os/Bundle;
    .restart local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "sameTask":Z
    .restart local v15    # "selectedIntent":Landroid/content/Intent;
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_4

    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto/16 :goto_4

    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "currentUserId":I
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "extra":Landroid/os/Bundle;
    .end local v13    # "sameTask":Z
    .end local v15    # "selectedIntent":Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .local v9, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_7
    if-eqz v9, :cond_11

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_16

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    :cond_16
    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v17

    if-eqz v17, :cond_11

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17

    const/4 v4, 0x0

    :cond_17
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_5

    .end local v9    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    goto :goto_7

    :cond_19
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->needToUpdateCenterBarPosition(I)Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    const/16 v17, 0x0

    const v18, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->updateCenterBarPosition(IF)V

    :goto_8
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->updateCenterBarPosition(IF)V

    goto/16 :goto_6

    :cond_1a
    const/16 v17, 0x0

    const v18, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->updateCenterBarPosition(IF)V

    goto :goto_8
.end method

.method public applyMultiWindowStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "sourceToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, 0x0

    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFixedOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.google.android.packageinstaller"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v0    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .restart local v0    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1
    return-object v0
.end method

.method public applyRecentTaskMultiWindowStyle(Lcom/android/server/am/TaskRecord;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 13
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/16 v12, 0x1000

    const/high16 v11, 0x1000000

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v8, :cond_2

    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .local v5, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v8, 0x8000000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v11, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_0
    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .local v4, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/16 v8, 0x80

    iget v9, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-interface {v4, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/IPackageManager;
    .end local v5    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1
    :goto_0
    return-object v5

    :cond_2
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .local v1, "baseStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .local v3, "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v6, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .local v6, "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v8, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/server/am/ActivityRecord;->windowIsFloating:Z

    if-eqz v7, :cond_7

    move v2, v8

    .local v2, "disablePW":Z
    :goto_1
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v7}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v7}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v7}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_2
    invoke-virtual {v3, v10, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v1, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_9

    const/high16 v7, 0x8000000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_9

    if-nez v2, :cond_9

    move v7, v8

    :goto_3
    invoke-virtual {v3, v11, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/high16 v10, 0x200000

    const/high16 v7, 0x200000

    invoke-virtual {v1, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_3

    const/high16 v7, 0x200000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_3
    move v7, v8

    :goto_4
    invoke-virtual {v3, v10, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v1, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move v9, v8

    :cond_5
    invoke-virtual {v3, v12, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v7

    invoke-virtual {v3, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    .end local v2    # "disablePW":Z
    .end local v6    # "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_6
    move-object v5, v3

    goto/16 :goto_0

    .restart local v6    # "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_7
    move v2, v9

    goto :goto_1

    .restart local v2    # "disablePW":Z
    :cond_8
    move v7, v9

    goto :goto_2

    :cond_9
    move v7, v9

    goto :goto_3

    :cond_a
    move v7, v9

    goto :goto_4

    .end local v1    # "baseStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v2    # "disablePW":Z
    .end local v3    # "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v6    # "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v4    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v5    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 12
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "requestStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/high16 v8, 0x4000000

    const/4 v11, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v7

    if-eqz v7, :cond_2

    const/high16 v7, 0x2000000

    invoke-virtual {p2, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->createMultiWindowFreezeSurface(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    .local v4, "requestZone":I
    const/16 v7, 0xf

    if-eq v4, v7, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiWindowPolicy;->findBaseZone(I)I

    move-result v1

    .local v1, "baseZone":I
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_0

    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v2, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .local v2, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v2, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    xor-int/lit8 v7, v4, -0x1

    and-int/2addr v7, v1

    invoke-virtual {v2, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p2, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->createMultiWindowFreezeSurface(I)V

    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v7, v2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v5, :cond_4

    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v8

    iget v9, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    :cond_4
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    xor-int/lit8 v8, v4, -0x1

    and-int/2addr v8, v1

    if-eq v7, v8, :cond_0

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v8, 0x1000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .local v3, "orgin":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_5

    iget v7, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v8, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v9, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v7, v8, v9, v11}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IIIZ)V

    .end local v3    # "orgin":Lcom/android/server/am/ActivityStack;
    :cond_5
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v7, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {v5, v6, v11, v11}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    const-string v7, "FIXME"

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v9, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto/16 :goto_0

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    invoke-virtual {v2, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "appTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v8, 0x8

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v9

    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    goto/16 :goto_1
.end method

.method public arrangeMultiWindowStyleOnResumeTopActivities(Lcom/android/server/am/ActivityStack;)V
    .locals 32
    .param p1, "resumeTopStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryIsolatedLocked()Ljava/util/ArrayList;

    move-result-object v22

    .local v22, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .local v17, "skipTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v12, 0x0

    .local v12, "obscuredZone":I
    const/4 v13, 0x0

    .local v13, "overRecent":Z
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .local v14, "recordZoneTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v8, v26, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_2

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/TaskRecord;

    .local v20, "task":Lcom/android/server/am/TaskRecord;
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v21

    .local v21, "taskObscuredZone":I
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .local v23, "topAr":Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_4

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v26

    if-eqz v26, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ne v0, v8, :cond_4

    if-lez v8, :cond_4

    add-int/lit8 v26, v8, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/TaskRecord;->isRecentTask()Z

    move-result v26

    if-eqz v26, :cond_4

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .local v25, "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v13, 0x1

    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .end local v21    # "taskObscuredZone":I
    .end local v23    # "topAr":Lcom/android/server/am/ActivityRecord;
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2
    :goto_2
    const/16 v26, 0xf

    move/from16 v0, v26

    if-eq v12, v0, :cond_0

    const/4 v15, 0x0

    .local v15, "shouldPaused":Z
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v7

    .local v7, "frontZoneSize":I
    if-lez v7, :cond_16

    const/4 v11, 0x0

    .local v11, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-lez v7, :cond_e

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_f

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    .local v24, "tr":Lcom/android/server/am/TaskRecord;
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v26

    if-eqz v26, :cond_a

    const-string v26, "MultiWindowPolicy"

    const-string v27, "Keep current MultiWindowStyle by option"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7    # "frontZoneSize":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v15    # "shouldPaused":Z
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v20    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v21    # "taskObscuredZone":I
    .restart local v23    # "topAr":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/16 v26, 0xf

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v26

    if-eqz v26, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_1

    :cond_6
    if-nez v21, :cond_7

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v26

    if-gtz v26, :cond_5

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    if-eqz v26, :cond_5

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_7
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    if-eqz v26, :cond_5

    and-int v26, v12, v21

    if-nez v26, :cond_9

    or-int v12, v12, v21

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v26

    if-eqz v26, :cond_5

    const/4 v10, 0x0

    .local v10, "isRealOverHome":Z
    if-lez v8, :cond_8

    add-int/lit8 v26, v8, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    add-int/lit8 v26, v8, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v26

    if-eqz v26, :cond_8

    const/4 v10, 0x1

    :goto_5
    if-eqz v10, :cond_5

    goto/16 :goto_2

    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    .end local v10    # "isRealOverHome":Z
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_9
    or-int v26, v12, v21

    const/16 v27, 0xf

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz v25, :cond_5

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .end local v21    # "taskObscuredZone":I
    .end local v23    # "topAr":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "frontZoneSize":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v15    # "shouldPaused":Z
    .restart local v24    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_a
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v26

    if-eqz v26, :cond_b

    if-eqz v13, :cond_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v28, v0

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v29

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    :cond_c
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3

    const-string v26, "FIXME"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v28, v0

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v30}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    const-string v28, "FIXME"

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_d
    const/4 v15, 0x1

    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_e
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_16

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    .local v16, "skipTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v28, v0

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v30}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto :goto_7

    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "skipTask":Lcom/android/server/am/TaskRecord;
    :cond_f
    const/4 v6, 0x0

    .local v6, "arrangeZone":I
    packed-switch v7, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    const/4 v6, 0x3

    :goto_8
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_10
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    .restart local v24    # "tr":Lcom/android/server/am/TaskRecord;
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v11, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v19

    .local v19, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_10

    const-string v26, "FIXME"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v28, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    monitor-exit v27

    goto/16 :goto_9

    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v19    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_11
    const/16 v6, 0xc

    goto/16 :goto_8

    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_12
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    check-cast v25, Ljava/util/ArrayList;

    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_13
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    .restart local v24    # "tr":Lcom/android/server/am/TaskRecord;
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    xor-int/lit8 v26, v6, -0x1

    and-int/lit8 v26, v26, 0xf

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v19

    .restart local v19    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_13

    const-string v26, "FIXME"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v28, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    monitor-exit v27

    goto/16 :goto_a

    :catchall_1
    move-exception v26

    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v26

    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v19    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :pswitch_1
    xor-int/lit8 v26, v12, -0x1

    and-int/lit8 v26, v26, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->findBaseZone(I)I

    move-result v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "allZoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Collection;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Collection;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Collection;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_14
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    .restart local v24    # "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v26

    and-int v26, v26, v6

    if-eqz v26, :cond_14

    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    xor-int/lit8 v26, v6, -0x1

    and-int/lit8 v26, v26, 0xf

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v19

    .restart local v19    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_14

    const-string v26, "FIXME"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v28, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    monitor-exit v27

    goto/16 :goto_b

    :catchall_2
    move-exception v26

    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v26

    .end local v5    # "allZoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v6    # "arrangeZone":I
    .end local v19    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/TaskRecord;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    const-string v28, "FIXME"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_16
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public calculateMinimizePosition(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "zone"    # I
    .param p3, "displaySize"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x0

    .local v3, "x":I
    const/4 v4, 0x0

    .local v4, "y":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502e7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, "minimizeSize":I
    const/4 v0, 0x0

    .local v0, "cocktailBarSize":I
    const/4 v2, 0x0

    .local v2, "orient":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    iget v5, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v1

    sub-int v3, v5, v0

    sparse-switch p2, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Point;->y:I

    :goto_0
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    :sswitch_0
    sget v4, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    goto :goto_0

    :sswitch_1
    iget v5, p3, Landroid/graphics/Point;->y:I

    sub-int v4, v5, v1

    goto :goto_0

    :cond_0
    sget v5, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    add-int v4, v0, v5

    sparse-switch p2, :sswitch_data_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v5

    iget v3, v5, Landroid/graphics/Point;->x:I

    goto :goto_0

    :sswitch_2
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_3
    iget v5, p3, Landroid/graphics/Point;->x:I

    sub-int v3, v5, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method chkDisableByMobileKeyboard()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningSplitApp:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/am/MultiWindowPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowPolicy$4;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method public closePenWindow()V
    .locals 10

    .prologue
    const-string v6, "MultiWindowPolicy"

    const-string v7, "closePenWindow"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v0

    .local v0, "currentUserId":I
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    iget v6, v5, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v6, v0, :cond_2

    iget v6, v5, Lcom/android/server/am/TaskRecord;->userId:I

    const/16 v8, 0x64

    if-lt v6, v8, :cond_1

    :cond_2
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method findBaseZone(I)I
    .locals 1
    .param p1, "requestZone"    # I

    .prologue
    const/16 v0, 0xf

    .local v0, "baseZone":I
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findNextFocusableStackTab(I)I
    .locals 8
    .param p1, "curStackId"    # I

    .prologue
    const/4 v2, -0x1

    .local v2, "nextStackId":I
    const/4 v4, -0x1

    .local v4, "stackId":I
    const/4 v3, -0x1

    .local v3, "prevStackId":I
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .local v5, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    move v3, v4

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "idx":I
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabFrontStack:I

    .end local v1    # "idx":I
    .end local v5    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_1
    return v2

    .restart local v1    # "idx":I
    .restart local v5    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    return v0
.end method

.method getBounds(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "zone"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;II)V

    return-void
.end method

.method getBounds(Landroid/graphics/Rect;II)V
    .locals 4
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "zone"    # I
    .param p3, "displayId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .local v0, "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    if-nez v0, :cond_0

    const-string v1, "MultiWindowPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested display #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not initilized yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/android/server/am/MultiWindowPolicy;->updateZoneRects(I)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    check-cast v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .restart local v0    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->FULL:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    return-object v0
.end method

.method public getDefaultScale()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    return v0
.end method

.method public getEnableMultiInstance(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    .local v1, "bMultiInstance":Z
    if-nez p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .local v0, "applicationMetaData":Landroid/os/Bundle;
    :goto_1
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .local v2, "launchMode":I
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v3

    .local v3, "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eq v2, v6, :cond_3

    if-eq v2, v7, :cond_3

    const/4 v1, 0x1

    :cond_1
    :goto_2
    move v5, v1

    goto :goto_0

    .end local v0    # "applicationMetaData":Landroid/os/Bundle;
    .end local v2    # "launchMode":I
    .end local v3    # "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "applicationMetaData":Landroid/os/Bundle;
    .restart local v2    # "launchMode":I
    .restart local v3    # "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_3
    if-ne v2, v6, :cond_4

    if-eqz v0, :cond_1

    const-string v5, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "multiInstanceLaunchMode":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "singleTask"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    .end local v4    # "multiInstanceLaunchMode":Ljava/lang/String;
    :cond_4
    if-ne v2, v7, :cond_1

    if-eqz v0, :cond_1

    const-string v5, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "multiInstanceLaunchMode":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "singleInstance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public getPenWindowLaunchScale(Landroid/content/pm/ActivityInfo;)F
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .local v2, "metaData":Landroid/os/Bundle;
    :goto_0
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    .local v0, "defaultScale":F
    if-eqz v2, :cond_1

    const-string v3, "com.sec.android.multiwindow.DEFAULT_SCALE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    :goto_1
    return v1

    .end local v0    # "defaultScale":F
    .end local v2    # "metaData":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .restart local v0    # "defaultScale":F
    .restart local v2    # "metaData":Landroid/os/Bundle;
    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I
    .locals 10
    .param p1, "requestZone"    # I
    .param p2, "displayId"    # I
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/16 v9, 0x1000

    const/16 v8, 0xf

    const/4 v3, 0x0

    .local v3, "relativeZone":I
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->findBaseZone(I)I

    move-result v3

    if-ne v3, v8, :cond_0

    const/4 v3, 0x0

    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "obscuredZone":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-ne v2, v8, :cond_4

    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v6, 0x0

    :goto_1
    return v6

    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v5, :cond_5

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v7, p3, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v5, p3

    :cond_5
    if-eqz v5, :cond_9

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    or-int/2addr v2, v6

    :cond_6
    :goto_2
    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v6

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-eq v6, v7, :cond_3

    :cond_7
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, v5, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v7, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    if-eq v6, v7, :cond_8

    iget v6, p3, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v7, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    if-eq v6, v7, :cond_8

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_8
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-ne v6, v3, :cond_1

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_1

    :cond_9
    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-ne v6, v7, :cond_6

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_2
.end method

.method public getRunningPenWindowCnt()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowPolicy;->getRunningPenWindowCnt(I)I

    move-result v0

    return v0
.end method

.method public getRunningPenWindowCnt(I)I
    .locals 12
    .param p1, "notIncludeTaskId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    .local v1, "cnt":I
    iput v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mDiffUserPenWindowCnt:I

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v4

    .local v4, "currentUserId":I
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, -0x1

    .local v2, "curHomeTaskNdx":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .local v8, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v9, v4, :cond_3

    move v2, v6

    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "activityStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .local v3, "currStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v9, :cond_1

    iget v9, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v9, p1, :cond_1

    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v9, v4, :cond_4

    iget v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mDiffUserPenWindowCnt:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mDiffUserPenWindowCnt:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "activityStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .restart local v0    # "activityStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ge v9, v2, :cond_2

    sget-boolean v9, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "MultiWindowPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not Conunt task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", taskNdx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " < homeTaskNdx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    return v1
.end method

.method public getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 17
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v2, 0x0

    .local v2, "cls":Landroid/content/ComponentName;
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v15, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .local v7, "nInstance":I
    const/4 v3, 0x0

    .local v3, "cp":Lcom/android/server/am/TaskRecord;
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .local v14, "userId":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    .local v9, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    .local v12, "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .local v11, "tR":Lcom/android/server/am/TaskRecord;
    iget-object v1, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v1, "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v15, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v15, :cond_3

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v15, v3, :cond_3

    iget v15, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v15, v14, :cond_3

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v15, :cond_9

    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v15, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .local v13, "taskAffinity":Ljava/lang/String;
    :goto_3
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "cp":Lcom/android/server/am/TaskRecord;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "nInstance":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .end local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v13    # "taskAffinity":Ljava/lang/String;
    .end local v14    # "userId":I
    :cond_4
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_0

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto/16 :goto_0

    .restart local v3    # "cp":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "nInstance":I
    :cond_5
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/am/TaskRecord;->userId:I

    goto/16 :goto_1

    :cond_6
    const/4 v14, -0x2

    goto/16 :goto_1

    .restart local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v14    # "userId":I
    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    :cond_9
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_a

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v15, :cond_3

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .end local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .end local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_b
    return v7
.end method

.method public getTabFrontStack()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabFrontStack:I

    return v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowTab;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public getTaskController()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/MultiWindowPolicy$TaskController;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initCenterBarPosition(I)Landroid/graphics/Point;
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(ILandroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v1
.end method

.method public initMWSetting(Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "MultiWindowPolicy"

    const-string v8, "Check MultiWindowSetting!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "MultiWindowPolicy"

    const-string v8, "MultiWindowSetting! - SimplificationUI"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "multi_window_enabled"

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_5

    move v2, v5

    .local v2, "isMultiWindow":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "easy_mode_switch"

    invoke-static {v7, v8, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_6

    move v0, v5

    .local v0, "isEasyMode":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    .local v4, "isUPS":Z
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_keyboard"

    invoke-static {v7, v8, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_7

    move v1, v5

    .local v1, "isMobileKeyboardEnabled":Z
    :goto_2
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/am/MultiWindowPolicy;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    .local v3, "isTalkbackEnabled":Z
    const-string v7, "MultiWindowPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MultiWindowSetting! - SimplificationUI mw : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " easymode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mobile-keyboard : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    if-eqz v3, :cond_8

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string v7, "easymode"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string v7, "com.sec.android.emergencymode.service"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string v7, "mobile_keyboard"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string v7, "talkback"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .end local v0    # "isEasyMode":Z
    .end local v1    # "isMobileKeyboardEnabled":Z
    .end local v2    # "isMultiWindow":Z
    .end local v3    # "isTalkbackEnabled":Z
    .end local v4    # "isUPS":Z
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v2, v6

    goto/16 :goto_0

    .restart local v2    # "isMultiWindow":Z
    :cond_6
    move v0, v6

    goto/16 :goto_1

    .restart local v0    # "isEasyMode":Z
    .restart local v4    # "isUPS":Z
    :cond_7
    move v1, v6

    goto :goto_2

    .restart local v1    # "isMobileKeyboardEnabled":Z
    .restart local v3    # "isTalkbackEnabled":Z
    :cond_8
    if-nez v2, :cond_4

    const-string v6, "MultiWindowPolicy"

    const-string v7, "Turn on MultiWindowSetting!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_window_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method public initMultiWindowApplicationInfo()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->initConfig()V

    return-void
.end method

.method public isAvoidScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidScaleOption(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEnableMakePenWindow()Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow(I)Z

    move-result v0

    return v0
.end method

.method public isEnableMakePenWindow(I)Z
    .locals 5
    .param p1, "notIncludeTaskId"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getMaxPenWindow(Landroid/content/Context;)I

    move-result v1

    .local v1, "maxPenWindow":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, "isDesktopMode":Z
    if-nez v0, :cond_0

    if-ltz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getRunningPenWindowCnt(I)I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    monitor-exit v3

    :goto_0
    return v2

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/am/MultiWindowPolicy$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isNoTitleActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isNoTitleActivityList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPenWindowLaunchApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPopupLaunchApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isPenWindowOnlyApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPenWindowOnlyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowPolicy;->isGamePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MultiWindowPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gamemode - In isSupportFullScreenMinimizable() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will be made as FullScreenMinimizable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isTphoneRelaxMode()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "tphone"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "skt_phone20_relax_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isUpdateTaskToReturnToFrozenLocked()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mUpdateTaskToReturnToFrozen:Z

    return v0
.end method

.method public minimizeAll(Ljava/lang/String;)V
    .locals 7
    .param p1, "skipPackage"    # Ljava/lang/String;

    .prologue
    const-string v3, "MultiWindowPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minimizeAll : skipPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minimizeAll : stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "topRecord":Lcom/android/server/am/ActivityRecord;
    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minimizeAll : topRecord="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    const/4 v3, 0x4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method moveAllTasksToBackInAllFloatingStacks(Ljava/lang/String;)V
    .locals 7
    .param p1, "skipPackage"    # Ljava/lang/String;

    .prologue
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveAllTasksToBackInAllFloatingStacks, skipPackage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Callers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "topRecord":Lcom/android/server/am/ActivityRecord;
    sget-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveAllTasksToBackInAllFloatingStacks, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_1

    if-eqz p1, :cond_3

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    const-string v3, "minimize_all"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/MultiWindowPolicy;->moveAllTasksToBackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method moveAllTasksToBackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V
    .locals 6
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiWindowPolicy"

    const-string v4, "moveAllTaskToBack(), stack is home, return"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    sget-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MultiWindowPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTaskToBackLocked, #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v4, 0x1

    invoke-virtual {p1, v3, p2, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILjava/lang/String;Z)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public needToUpdateCenterBarPosition(I)Z
    .locals 10
    .param p1, "displayId"    # I

    .prologue
    const v9, 0x3f4ccccd    # 0.8f

    const v8, 0x3e4ccccd    # 0.2f

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .local v6, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v5

    .local v5, "display":Landroid/view/Display;
    if-eqz v5, :cond_0

    invoke-virtual {v5, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .local v3, "MIN_FIXED_WIDTH":I
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    float-to-int v1, v7

    .local v1, "MAX_FIXED_WIDTH":I
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .local v2, "MIN_FIXED_HEIGHT":I
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    float-to-int v0, v7

    .local v0, "MAX_FIXED_HEIGHT":I
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v4

    .local v4, "centerBarPoint":Landroid/graphics/Point;
    iget v7, v4, Landroid/graphics/Point;->x:I

    if-le v7, v3, :cond_1

    iget v7, v4, Landroid/graphics/Point;->x:I

    if-ge v7, v1, :cond_1

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-le v7, v2, :cond_1

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-lt v7, v0, :cond_2

    :cond_1
    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 0
    .param p1, "cmp"    # Landroid/content/ComponentName;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    return-void
.end method

.method public notifyTaskRemoved(I)V
    .locals 5
    .param p1, "taskId"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "key":Landroid/os/IBinder;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    iget v2, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    sget v4, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v2, p1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskRemoved(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v1    # "key":Landroid/os/IBinder;
    :cond_1
    :try_start_2
    monitor-exit v3

    return-void

    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyTaskStarted(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v3

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;-><init>()V

    .local v0, "taskInfo":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->id:I

    new-instance v3, Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v3, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseActivity:Landroid/content/ComponentName;

    :goto_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V

    goto :goto_0

    .end local v0    # "taskInfo":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "taskInfo":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    .restart local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_2
.end method

.method public notifyTaskStopped(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "key":Landroid/os/IBinder;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v2, p1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskStopped(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v1    # "key":Landroid/os/IBinder;
    :cond_0
    :try_start_2
    monitor-exit v3

    return-void

    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 5
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/MultiWindowPolicy$TaskController;-><init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RUNNING:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .restart local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .locals 5
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/MultiWindowPolicy$TaskController;-><init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .restart local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public removeTab(I)V
    .locals 9
    .param p1, "stackId"    # I

    .prologue
    const/high16 v8, 0x800000

    const/4 v7, -0x1

    const/4 v6, 0x1

    if-ne p1, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabFrontStack:I

    if-ne v5, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->findNextFocusableStackTab(I)I

    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .local v3, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v5

    if-ne v5, p1, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v3    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .local v4, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v7}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v8, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, v2, v1}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_5
    const/16 v5, 0x8

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_0
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->removeUser(I)V

    return-void
.end method

.method public resize2Split(IIIZ)V
    .locals 5
    .param p1, "stackAId"    # I
    .param p2, "stackBId"    # I
    .param p3, "displayId"    # I
    .param p4, "isIsolated"    # Z

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "zoneBounds":Landroid/graphics/Rect;
    if-eqz p4, :cond_0

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/am/MultiWindowPolicy;->updateIsolatedRects(IILandroid/graphics/Rect;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;Z)V

    if-eqz p4, :cond_1

    invoke-direct {p0, v2, v4, v0}, Lcom/android/server/am/MultiWindowPolicy;->updateIsolatedRects(IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    invoke-virtual {v1, p3, v2}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;I)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {v2, p3, v1}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    goto :goto_1
.end method

.method public resize2Split(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "isIsolated"    # Z

    .prologue
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    const/4 v3, 0x3

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .local v1, "stackA":Lcom/android/server/am/ActivityStack;
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .local v2, "stackB":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IIIZ)V

    goto :goto_0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    return-void
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "zoneBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v1

    .local v1, "isIsolated":Z
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    if-eq v5, p1, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->updateZoneRects(I)V

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v5

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowPolicy;->updateIsolatedRects(IILandroid/graphics/Rect;)V

    :goto_3
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v5

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;II)V

    goto :goto_3

    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    return-void
.end method

.method public setFloatingBounds(Lcom/android/server/am/ActivityRecord;F)V
    .locals 35
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "scale"    # F

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    .local v26, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v32

    if-nez v32, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .local v13, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v12

    .local v12, "display":Landroid/view/Display;
    if-eqz v12, :cond_2

    invoke-virtual {v12, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_2
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v32

    if-eqz v32, :cond_5

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_5

    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v28, "tmpBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    move/from16 v22, v0

    .local v22, "maxScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    move/from16 v25, v0

    .local v25, "minScale":F
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v4

    .local v4, "appOr":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    .local v17, "globalOr":I
    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToConfigurationOrientation(II)I

    move-result v15

    .local v15, "expectedOr":I
    sget-boolean v32, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v32, :cond_10

    move/from16 v0, v17

    if-eq v0, v15, :cond_10

    const/16 v19, 0x1

    .local v19, "isSelectiveState":Z
    :goto_1
    sget-boolean v32, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v32, :cond_3

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mSelectiveScale:F

    move/from16 v22, v0

    move/from16 v25, v22

    :cond_3
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_11

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    :goto_2
    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v22

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v21, v0

    .local v21, "maxLength":I
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_12

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    :goto_3
    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v25

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v24, v0

    .local v24, "minLength":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v32

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_13

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v29

    .local v29, "tmpStackLength":I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    move/from16 v0, v29

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    :cond_4
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->setEmpty()V

    sget-boolean v32, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v32, :cond_5

    const-string v32, "MultiWindowPolicy"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "setFloatingBounds, abnormal boudns="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", setEmpty to adjust, r="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "MultiWindowPolicy"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "setFloatingBounds, minLength="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", maxLength="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", tmpStackLength="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "appOr":I
    .end local v15    # "expectedOr":I
    .end local v17    # "globalOr":I
    .end local v19    # "isSelectiveState":Z
    .end local v21    # "maxLength":I
    .end local v22    # "maxScale":F
    .end local v24    # "minLength":I
    .end local v25    # "minScale":F
    .end local v28    # "tmpBounds":Landroid/graphics/Rect;
    .end local v29    # "tmpStackLength":I
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    move/from16 v32, v0

    if-nez v32, :cond_6

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v32

    if-eqz v32, :cond_6

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .local v5, "ar":Lcom/android/server/am/ActivityRecord;
    :goto_5
    if-nez v5, :cond_0

    .end local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_6
    const/4 v9, 0x0

    .local v9, "defWidth":I
    const/4 v7, 0x0

    .local v7, "defHeight":I
    const/16 v32, 0x800

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v32

    if-nez v32, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    .local v18, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v32, v0

    if-eqz v32, :cond_15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v23, v0

    .local v23, "metaData":Landroid/os/Bundle;
    :goto_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v27

    .local v27, "res":Landroid/content/res/Resources;
    if-eqz v23, :cond_8

    const-string v32, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v33, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .local v8, "defSizeId":I
    if-eqz v8, :cond_7

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v9, v0

    :cond_7
    const-string v32, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v33, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_8

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v32

    move/from16 v0, v32

    float-to-int v7, v0

    .end local v8    # "defSizeId":I
    .end local v18    # "info":Landroid/content/pm/ActivityInfo;
    .end local v23    # "metaData":Landroid/os/Bundle;
    .end local v27    # "res":Landroid/content/res/Resources;
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x10502f0

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v10, v0

    .local v10, "defWindowGapOfLeft":I
    move v11, v10

    .local v11, "defWindowGapOfTop":I
    move/from16 v20, v10

    .local v20, "leftWindowGap":I
    move/from16 v31, v11

    .local v31, "topWindowGap":I
    if-eqz v9, :cond_9

    if-nez v7, :cond_a

    :cond_9
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v9, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v7, v0

    :cond_a
    const/16 v32, 0x0

    cmpl-float v32, p2, v32

    if-eqz v32, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    move/from16 v32, v0

    cmpg-float v32, p2, v32

    if-gez v32, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    move/from16 p2, v0

    :cond_b
    :goto_8
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, p2

    move/from16 v0, v32

    float-to-int v9, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, p2

    move/from16 v0, v32

    float-to-int v7, v0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v16

    .local v16, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v16, :cond_17

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v32

    if-eqz v32, :cond_17

    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .local v30, "topFreeStyleRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v33

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    if-eqz v30, :cond_d

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_d

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v20, v20, v32

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    add-int v31, v31, v32

    .end local v30    # "topFreeStyleRect":Landroid/graphics/Rect;
    :cond_d
    :goto_9
    new-instance v6, Landroid/graphics/Rect;

    add-int v32, v20, v9

    add-int v33, v31, v7

    move/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v6, "bound":Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_e

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_e

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    if-ltz v32, :cond_e

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    if-gez v32, :cond_f

    :cond_e
    add-int v32, v10, v9

    add-int v33, v11, v7

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v10, v11, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_f
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .end local v6    # "bound":Landroid/graphics/Rect;
    .end local v7    # "defHeight":I
    .end local v9    # "defWidth":I
    .end local v10    # "defWindowGapOfLeft":I
    .end local v11    # "defWindowGapOfTop":I
    .end local v16    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v20    # "leftWindowGap":I
    .end local v31    # "topWindowGap":I
    .restart local v4    # "appOr":I
    .restart local v15    # "expectedOr":I
    .restart local v17    # "globalOr":I
    .restart local v22    # "maxScale":F
    .restart local v25    # "minScale":F
    .restart local v28    # "tmpBounds":Landroid/graphics/Rect;
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_1

    .restart local v19    # "isSelectiveState":Z
    :cond_11
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v32, v0

    goto/16 :goto_2

    .restart local v21    # "maxLength":I
    :cond_12
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v32, v0

    goto/16 :goto_3

    .restart local v24    # "minLength":I
    :cond_13
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v29

    goto/16 :goto_4

    .end local v4    # "appOr":I
    .end local v15    # "expectedOr":I
    .end local v17    # "globalOr":I
    .end local v19    # "isSelectiveState":Z
    .end local v21    # "maxLength":I
    .end local v22    # "maxScale":F
    .end local v24    # "minLength":I
    .end local v25    # "minScale":F
    .end local v28    # "tmpBounds":Landroid/graphics/Rect;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto/16 :goto_5

    .restart local v7    # "defHeight":I
    .restart local v9    # "defWidth":I
    .restart local v18    # "info":Landroid/content/pm/ActivityInfo;
    :cond_15
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v23, v0

    goto/16 :goto_6

    .restart local v23    # "metaData":Landroid/os/Bundle;
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v14}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_7

    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v14

    .local v14, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v14}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_7

    .end local v14    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v18    # "info":Landroid/content/pm/ActivityInfo;
    .end local v23    # "metaData":Landroid/os/Bundle;
    .restart local v10    # "defWindowGapOfLeft":I
    .restart local v11    # "defWindowGapOfTop":I
    .restart local v20    # "leftWindowGap":I
    .restart local v31    # "topWindowGap":I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    move/from16 v32, v0

    cmpl-float v32, p2, v32

    if-lez v32, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    move/from16 p2, v0

    goto/16 :goto_8

    .restart local v16    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_17
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    sub-int v32, v32, v9

    div-int/lit8 v20, v32, 0x2

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v32, v0

    sub-int v32, v32, v7

    div-int/lit8 v31, v32, 0x2

    goto/16 :goto_9
.end method

.method public setIsolatedPoint(ILandroid/graphics/Point;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    iput-object p2, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IZ)V

    :cond_0
    return-void
.end method

.method public setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 6
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .local v2, "taskRecord":Lcom/android/server/am/TaskRecord;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .local v3, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v2, p2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {p1, v3, v5, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public setStackBoundTab(Landroid/graphics/Rect;Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/16 v1, 0x32

    .local v1, "offset":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .local v4, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .local v5, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v7, 0x800000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_0

    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    .end local v5    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method public setTabFrontStack(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabFrontStack:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setTabFrontStack(I)V

    return-void
.end method

.method startFreezingTaskToReturnToLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mUpdateTaskToReturnToFrozen:Z

    return-void
.end method

.method stopFreezingTaskToReturnToLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mUpdateTaskToReturnToFrozen:Z

    return-void
.end method

.method public systemReady()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    const/high16 v11, 0x447a0000    # 1000.0f

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e00f7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    iput v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e00f6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    iput v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e00f8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    iput v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    const-string v10, "display"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .local v4, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .local v3, "displays":[Landroid/view/Display;
    array-length v9, v3

    add-int/lit8 v2, v9, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_0

    aget-object v9, v3, v2

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .local v1, "displayId":I
    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiWindowPolicy;->initCenterBarPosition(I)Landroid/graphics/Point;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v1    # "displayId":I
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .local v7, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_1

    :try_start_0
    new-instance v9, Lcom/android/server/am/MultiWindowPolicy$1;

    invoke-direct {v9, p0}, Lcom/android/server/am/MultiWindowPolicy$1;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v10, 0x20

    invoke-virtual {v7, v9, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "phone":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v9, :cond_2

    new-instance v5, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-direct {v5, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v5, "filter":Landroid/content/IntentFilter;
    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v8, "timerFilter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v9, "com.android.settings.LaunchGlanceView"

    invoke-direct {v0, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "blackScreenFilter":Landroid/content/IntentFilter;
    new-instance v6, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-direct {v6, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v6, "minimizeAllFiter":Landroid/content/IntentFilter;
    new-instance v9, Lcom/android/server/am/MultiWindowPolicy$2;

    invoke-direct {v9, p0}, Lcom/android/server/am/MultiWindowPolicy$2;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0    # "blackScreenFilter":Landroid/content/IntentFilter;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "minimizeAllFiter":Landroid/content/IntentFilter;
    .end local v8    # "timerFilter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "kids_home_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/MultiWindowPolicy;->mSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v13, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "car_mode_on"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/MultiWindowPolicy;->mSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v13, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/MultiWindowPolicy;->mSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v13, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v9, "boot"

    invoke-virtual {p0, v9}, Lcom/android/server/am/MultiWindowPolicy;->initMWSetting(Ljava/lang/String;)V

    return-void

    .restart local v7    # "phone":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 4
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    .local v0, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCenterBarPosition(IF)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "weight"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_1

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(ILandroid/graphics/Point;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v3, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v2    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public updateConfigurationLockedLa(II)V
    .locals 9
    .param p1, "changes"    # I
    .param p2, "displayId"    # I

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p2}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    .local v3, "oldPoint":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .local v2, "newPoint":Landroid/graphics/Point;
    and-int/lit16 v6, p1, 0x80

    if-eqz v6, :cond_0

    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Point;->set(II)V

    :cond_0
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v6, Landroid/content/res/Configuration;->densityDpi:I

    .local v1, "newDensityDpi":I
    int-to-float v6, v1

    iget v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mDensityDpi:I

    int-to-float v7, v7

    div-float v0, v6, v7

    .local v0, "densityDiffRatio":F
    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v8

    float-to-int v4, v6

    .local v4, "x":I
    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v8

    float-to-int v5, v6

    .local v5, "y":I
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->set(II)V

    iput v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mDensityDpi:I

    .end local v0    # "densityDiffRatio":F
    .end local v1    # "newDensityDpi":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/android/server/am/MultiWindowPolicy;->setIsolatedPoint(ILandroid/graphics/Point;)V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "oldPoint":Landroid/graphics/Point;
    check-cast v3, Landroid/graphics/Point;

    .restart local v3    # "oldPoint":Landroid/graphics/Point;
    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiWindowPolicy;->updateZoneRects(I)V

    .end local v2    # "newPoint":Landroid/graphics/Point;
    :goto_0
    return-void

    .end local v3    # "oldPoint":Landroid/graphics/Point;
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .restart local v3    # "oldPoint":Landroid/graphics/Point;
    if-eqz v3, :cond_5

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .restart local v2    # "newPoint":Landroid/graphics/Point;
    and-int/lit16 v6, p1, 0x80

    if-eqz v6, :cond_3

    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Point;->set(II)V

    :cond_3
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v6, Landroid/content/res/Configuration;->densityDpi:I

    .restart local v1    # "newDensityDpi":I
    int-to-float v6, v1

    iget v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mDensityDpi:I

    int-to-float v7, v7

    div-float v0, v6, v7

    .restart local v0    # "densityDiffRatio":F
    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v8

    float-to-int v4, v6

    .restart local v4    # "x":I
    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v8

    float-to-int v5, v6

    .restart local v5    # "y":I
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->set(II)V

    iput v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mDensityDpi:I

    .end local v0    # "densityDiffRatio":F
    .end local v1    # "newDensityDpi":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_4
    invoke-virtual {p0, p2, v2}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(ILandroid/graphics/Point;)V

    goto :goto_0

    .end local v2    # "newPoint":Landroid/graphics/Point;
    :cond_5
    const-string v6, "MultiWindowPolicy"

    const-string v7, "updateConfigurationLockedLa : oldPoint is null!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateZoneRects(I)V
    .locals 11
    .param p1, "displayId"    # I

    .prologue
    const/4 v9, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .local v2, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .local v1, "d":Landroid/view/Display;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .local v0, "centerBarPoint":Landroid/graphics/Point;
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->initCenterBarPosition(I)Landroid/graphics/Point;

    move-result-object v0

    :cond_1
    iget v4, v2, Landroid/graphics/Point;->x:I

    .local v4, "iDeviceWidth":I
    iget v3, v2, Landroid/graphics/Point;->y:I

    .local v3, "iDeviceHeight":I
    iget v6, v0, Landroid/graphics/Point;->x:I

    .local v6, "iWidthBoundary":I
    iget v5, v0, Landroid/graphics/Point;->y:I

    .local v5, "iHeightBoundary":I
    if-le v4, v3, :cond_3

    const/4 v7, 0x1

    .local v7, "landscape":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .local v8, "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    if-nez v8, :cond_2

    new-instance v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .end local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    const/4 v10, 0x0

    invoke-direct {v8, p0, v10}, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;-><init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/android/server/am/MultiWindowPolicy$1;)V

    .restart local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v10, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    if-eqz v7, :cond_4

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v5, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6, v9, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v6, v5, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    :goto_1
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    iget-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    iget-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->FULL:Landroid/graphics/Rect;

    iget-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->FULL:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return-void

    .end local v7    # "landscape":Z
    .end local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    :cond_3
    move v7, v9

    goto :goto_0

    .restart local v7    # "landscape":Z
    .restart local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    :cond_4
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v5, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6, v9, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v6, v5, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    goto :goto_1
.end method
