.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.super Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.source "CocktailBarManagerServiceContainer.java"

# interfaces
.implements Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;
.implements Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;
.implements Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;
.implements Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;
    }
.end annotation


# static fields
.field private static final ACTION_EDGE_APP_START:Ljava/lang/String; = "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

.field private static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final LOADED_PROFILE_ID:I = -0x1

.field private static final MSG_CHANGE_RESUME_PACKAGE:I = 0x2

.field private static final MSG_CHANGE_VISIBLE_EDGE_SERVICE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_USER_ID:I = -0xa


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClientManager:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

.field private mCocktailBarHandler:Landroid/os/Handler;

.field private final mCocktailBarServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCocktailBarSettingObserver:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

.field private final mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mFeedsManager:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

.field private mFilterCategory:I

.field private mHost:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cocktailbar/ICocktailHost;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private final mLoadedUserIds:Landroid/util/SparseIntArray;

.field private final mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

.field private mPersonalManager:Landroid/os/PersonaManager;

.field private mSafeMode:Z

.field private final mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

.field private final mShutdownManager:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

.field private final mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

.field private mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;-><init>()V

    .line 88
    iput-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    .line 89
    iput-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    .line 90
    iput v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    .line 91
    iput-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    .line 92
    iput v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:I

    .line 96
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    .line 1024
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .line 117
    new-instance v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    .line 118
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mUserManager:Landroid/os/UserManager;

    .line 119
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 120
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-direct {v0, p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    .line 121
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .line 122
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->getInstance()Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFeedsManager:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    .line 123
    new-instance v0, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mClientManager:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    .line 124
    new-instance v0, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mShutdownManager:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    .line 125
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    .line 126
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .line 129
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 132
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->createCocktailBarManagerServiceImplLocked(I)V

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->registerOnCrossProfileProvidersChangedListener()V

    .line 136
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarSettingObserver:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->handleChangeVisibleEdgeService(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->handleChangedResumePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserStarted(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserStopped(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitched(I)V

    return-void
.end method

.method private bootCompleted()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->createCocktailBarManagerServiceImpl(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->registerBroadcastReceiver()V

    .line 156
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    return-void
.end method

.method private createCocktailBarManagerServiceImpl(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v2

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 215
    .local v0, "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->createCocktailBarManagerServiceImplLocked(I)V

    .line 218
    :cond_0
    monitor-exit v2

    .line 219
    return-void

    .line 218
    .end local v0    # "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createCocktailBarManagerServiceImplLocked(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 222
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V

    .line 223
    .local v0, "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    return-void
.end method

.method private enforceCocktailBarService()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 950
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v1

    .line 951
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 952
    const/4 v0, 0x0

    monitor-exit v1

    .line 954
    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 955
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ensureGroupStateLoaded(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v7, -0x1

    .line 188
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v6

    .line 189
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v5, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v4

    .line 190
    .local v4, "profileIds":[I
    const/4 v1, 0x0

    .line 191
    .local v1, "newMemberCount":I
    array-length v3, v4

    .line 192
    .local v3, "profileIdCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 193
    aget v2, v4, v0

    .line 194
    .local v2, "profileId":I
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 195
    const/4 v5, -0x1

    aput v5, v4, v0

    .line 192
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    .end local v2    # "profileId":I
    :cond_1
    if-gtz v1, :cond_2

    .line 201
    monitor-exit v6

    .line 210
    :goto_2
    return-void

    .line 203
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    .line 204
    aget v2, v4, v0

    .line 205
    .restart local v2    # "profileId":I
    if-eq v2, v7, :cond_3

    .line 206
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->createCocktailBarManagerServiceImplLocked(I)V

    .line 203
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 209
    .end local v2    # "profileId":I
    :cond_4
    monitor-exit v6

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "newMemberCount":I
    .end local v3    # "profileIdCount":I
    .end local v4    # "profileIds":[I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 247
    const/4 v6, 0x0

    .line 249
    .local v6, "initial":Z
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v7

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 251
    .local v0, "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-nez v0, :cond_1

    .line 252
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find CocktailBarManagerService for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .end local v0    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V

    .line 254
    .restart local v0    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V

    .line 258
    :cond_0
    const/4 v6, 0x1

    .line 260
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-eqz v6, :cond_2

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    if-eqz v1, :cond_2

    .line 262
    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->initialize()V

    .line 264
    :cond_2
    return-object v0

    .line 260
    .end local v0    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleChangeVisibleEdgeService(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    :goto_0
    return-void

    .line 916
    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->changeVisibleEdgeService(Z)V

    goto :goto_0
.end method

.method private handleChangedResumePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "resumePackageName"    # Ljava/lang/String;

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->changeResumePackage(Ljava/lang/String;I)V

    .line 927
    return-void
.end method

.method private onUserStarted(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 959
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserStarted : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 961
    return-void
.end method

.method private onUserStopped(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x2

    .line 964
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUserStopped : userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v4

    if-nez v4, :cond_0

    .line 994
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v5

    .line 969
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 970
    .local v3, "userIndex":I
    if-ltz v3, :cond_1

    .line 971
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 973
    :cond_1
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 974
    .local v1, "serviceIndex":I
    if-ltz v1, :cond_3

    .line 975
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 976
    .local v0, "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->systemDestroy()V

    .line 977
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 978
    const/16 v4, 0x64

    if-lt p1, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 979
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mPersonalManager:Landroid/os/PersonaManager;

    if-nez v4, :cond_2

    .line 980
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    iput-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mPersonalManager:Landroid/os/PersonaManager;

    .line 982
    :cond_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mPersonalManager:Landroid/os/PersonaManager;

    invoke-virtual {v4, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    .line 983
    .local v2, "sm":Landroid/os/PersonaManager$StateManager;
    if-eqz v2, :cond_4

    sget-object v4, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 985
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 993
    .end local v0    # "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .end local v2    # "sm":Landroid/os/PersonaManager$StateManager;
    :cond_3
    :goto_1
    monitor-exit v5

    goto :goto_0

    .end local v1    # "serviceIndex":I
    .end local v3    # "userIndex":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 988
    .restart local v0    # "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .restart local v1    # "serviceIndex":I
    .restart local v2    # "sm":Landroid/os/PersonaManager$StateManager;
    .restart local v3    # "userIndex":I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private onUserSwitched(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 997
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserSwitched : userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    if-eq v1, p1, :cond_0

    .line 1003
    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    .line 1004
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 1005
    move v0, p1

    .line 1006
    .local v0, "userIdF":I
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1019
    iput p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 19

    .prologue
    .line 161
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v4, "configFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 167
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 175
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v12, "sdFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 180
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .local v16, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_STARTED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 185
    return-void
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .locals 2

    .prologue
    .line 231
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 234
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public activateCocktailBar()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->activateCocktailBar()V

    .line 758
    :goto_0
    return-void

    .line 754
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateCocktailBar : Calling uid is not system uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callbacks"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public closeCocktail(Ljava/lang/String;II)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->closeCocktail(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public cocktailBarreboot(Ljava/lang/String;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mShutdownManager:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;->reboot(Ljava/lang/String;)V

    .line 947
    return-void
.end method

.method public cocktailBarshutdown(Ljava/lang/String;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mShutdownManager:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;->shutdown(Ljava/lang/String;)V

    .line 941
    return-void
.end method

.method public deactivateCocktailBar()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->deactivateCocktailBar()V

    .line 769
    :goto_0
    return-void

    .line 765
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deactivateCocktailBar : Calling uid is not system uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 512
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->disableCocktail(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1153
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1155
    :try_start_0
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, " "

    invoke-direct {v2, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1156
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1157
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1160
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 1161
    .local v3, "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1163
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1165
    .end local v3    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFeedsManager:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mClientManager:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1168
    monitor-exit v5

    .line 1169
    return-void

    .line 1168
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllCocktailIds()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v6

    if-nez v6, :cond_1

    .line 489
    const/4 v1, 0x0

    .line 503
    :cond_0
    return-object v1

    .line 491
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 492
    .local v5, "userId":I
    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 493
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v6, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v4

    .line 494
    .local v4, "profileIds":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 496
    aget v6, v4, v2

    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getAllCocktailIds(Ljava/util/ArrayList;)V

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 499
    .local v0, "N":I
    new-array v1, v0, [I

    .line 500
    .local v1, "cocktailIds":[I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    .line 501
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCocktaiBarWakeUpState()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getCocktaiBarWakeUpStateInternal()Z

    move-result v0

    return v0
.end method

.method public getCocktaiBarWakeUpStateInternal()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->getWakeUpState()Z

    move-result v0

    return v0
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 6
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 469
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v4

    .line 483
    :cond_0
    :goto_0
    return-object v0

    .line 472
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 473
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 474
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v5, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v2

    .line 476
    .local v2, "profileIds":[I
    const/4 v0, 0x0

    .line 477
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 478
    aget v5, v2, v1

    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 479
    if-nez v0, :cond_0

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v4

    .line 483
    goto :goto_0
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCocktailBarVisibility()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    return v0
.end method

.method public getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    const/4 v0, 0x0

    .line 522
    :goto_0
    return v0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 522
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailId(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_0
.end method

.method public getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 532
    :goto_0
    return-object v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 532
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getEnabledCocktailIds()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v6

    if-nez v6, :cond_1

    .line 450
    const/4 v6, 0x0

    new-array v1, v6, [I

    .line 464
    :cond_0
    return-object v1

    .line 452
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 453
    .local v5, "userId":I
    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 454
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v6, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v4

    .line 455
    .local v4, "profileIds":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 457
    aget v6, v4, v2

    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getEnabledCocktailIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 460
    .local v0, "N":I
    new-array v1, v0, [I

    .line 461
    .local v1, "cocktailIds":[I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    .line 462
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getWindowType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getWindowType()I

    move-result v0

    return v0
.end method

.method public isAllowTransientBarCocktailBar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 658
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 656
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isBoundCocktailPackage(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    const/4 v1, 0x0

    .line 562
    :goto_0
    return v1

    .line 552
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 559
    .local v0, "callingUid":I
    :goto_1
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 560
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system process can call this"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    .end local v0    # "callingUid":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .restart local v0    # "callingUid":I
    goto :goto_1

    .line 562
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isBoundCocktailPackage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    const/4 v0, 0x0

    .line 542
    :goto_0
    return v0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 542
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "viewId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailVisibiltyChanged(II)V

    goto :goto_0
.end method

.method public notifyKeyguardState(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyKeyguardState(Z)V

    goto :goto_0
.end method

.method public onChangeVisibleEdgeService(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 908
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 909
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 910
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 908
    goto :goto_0
.end method

.method public onChangedResumePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "resumePackageName"    # Ljava/lang/String;

    .prologue
    .line 921
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 922
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 923
    return-void
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 931
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCrossProfileWidgetProvidersChanged : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    if-eqz p2, :cond_0

    .line 933
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCrossProfileWidgetProvidersChanged : packages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    return-void
.end method

.method public onNotifyCocktailBarWakeUp(ZII)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailBarWakeUp(ZII)V

    goto :goto_0
.end method

.method public onRemoveCocktail(II)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 903
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktail(I)V

    goto :goto_0
.end method

.method public onResetMode(IILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "mode"    # I
    .param p3, "modeName"    # Ljava/lang/String;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 853
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->isDisableCocktailBarMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->hideAndLockCocktailBar(ZI)V

    .line 856
    :cond_0
    return-void
.end method

.method public onRestrictMode(ZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "mode"    # I

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->isDisableCocktailBarMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->restrictCocktailBar(ZI)V

    .line 874
    return-void

    .line 872
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public onSetMode(IILjava/lang/String;I)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "mode"    # I
    .param p3, "modeName"    # Ljava/lang/String;
    .param p4, "cocktailType"    # I

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v2

    if-nez v2, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 841
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    .line 842
    .local v1, "profileIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 843
    aget v2, v1, v0

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setMode(ILjava/lang/String;I)V

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 845
    :cond_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->isDisableCocktailBarMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->hideAndLockCocktailBar(ZI)V

    goto :goto_0
.end method

.method public onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "currentUserId"    # I
    .param p2, "newUserId"    # I
    .param p3, "currentUserType"    # I
    .param p4, "newUserType"    # I
    .param p5, "modeId"    # I
    .param p6, "callback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 883
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->disableUser(I)V

    .line 884
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p5}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->enableUser(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 885
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 886
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public onUnsetMode(IILjava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "mode"    # I
    .param p3, "modeName"    # Ljava/lang/String;

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v2

    if-nez v2, :cond_1

    .line 868
    :cond_0
    return-void

    .line 863
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 864
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    .line 865
    .local v1, "profileIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 866
    aget v2, v1, v0

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unsetMode(ILjava/lang/String;)V

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onUpdateCocktail(II)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    :goto_0
    return-void

    .line 895
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktail(I)V

    goto :goto_0
.end method

.method public partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
    if-nez p2, :cond_1

    .line 371
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partiallyUpdateCocktail : contentView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 376
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->partiallyUpdateCocktail(Ljava/lang/String;ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method public partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "helpView"    # Landroid/widget/RemoteViews;
    .param p3, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 385
    :cond_0
    if-nez p2, :cond_1

    .line 386
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partiallyUpdateHelpView : helpView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->partiallyUpdateHelpView(Ljava/lang/String;ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method public registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "cm"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    if-nez p2, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isSystemApplication(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mClientManager:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    goto :goto_0
.end method

.method public registerCocktailBarFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "cm"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v7

    if-nez v7, :cond_1

    .line 811
    :cond_0
    return-void

    .line 802
    :cond_1
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFeedsManager:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->registerFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v5

    .line 803
    .local v5, "res":Z
    if-eqz v5, :cond_0

    .line 804
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 805
    .local v6, "userId":I
    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 806
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v7, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v4

    .line 807
    .local v4, "profileIds":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 808
    .local v2, "id":I
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestUpdateFeeds()V

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "cm"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 789
    return-void
.end method

.method public removeCocktailUIService()V
    .locals 2

    .prologue
    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 736
    :cond_0
    return-void
.end method

.method public requestToDisableCocktail(I)Z
    .locals 1
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktail(I)Z

    move-result v0

    goto :goto_0
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .locals 1
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailByCategory(I)Z

    move-result v0

    goto :goto_0
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 1
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktail(I)Z

    move-result v0

    goto :goto_0
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .locals 1
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailByCategory(I)Z

    move-result v0

    goto :goto_0
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDragEvent(ILandroid/view/DragEvent;)V

    goto :goto_0
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extraData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setCocktailBarStatus(ZZ)V
    .locals 1
    .param p1, "shift"    # Z
    .param p2, "transparent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateCocktailBarStatus(ZZ)V

    .line 783
    return-void
.end method

.method public setCocktailBarWakeUpState(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setWakeUpState(Z)V

    .line 704
    return-void
.end method

.method public setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 270
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    .line 274
    iput p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:I

    .line 275
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V

    .line 277
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->isExistKioskContainers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    if-eq v0, v1, :cond_0

    .line 279
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public setDisableTickerView(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setDisableTickerView(I)V

    goto :goto_0
.end method

.method public setEnabledCocktailIds([I)V
    .locals 4
    .param p1, "cocktailIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    :cond_0
    return-void

    .line 439
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 440
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 441
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    .line 442
    .local v1, "profileIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 443
    aget v3, v1, v0

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setEnabledCocktailIds([I)V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public showAndLockCocktailBar()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 740
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->showAndLockCocktailBar(ZI)V

    .line 742
    return-void
.end method

.method public showCocktail(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->showCocktail(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v3

    if-nez v3, :cond_1

    .line 295
    :cond_0
    return-void

    .line 288
    :cond_1
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    .line 289
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 290
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 291
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    .line 292
    .local v1, "profileIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 293
    aget v3, v1, v0

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stopListening(Ljava/lang/String;)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 300
    .local v2, "userId":I
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopListening() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    .line 303
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Landroid/util/Pair;

    .line 305
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v4

    .line 306
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 307
    .local v1, "serviceIndex":I
    if-ltz v1, :cond_0

    .line 308
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 309
    .local v0, "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->deleteHostAndDisableAllCocktails()V

    .line 311
    .end local v0    # "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_0
    monitor-exit v4

    .line 313
    .end local v1    # "serviceIndex":I
    :cond_1
    return-void

    .line 311
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public switchDefaultCocktail()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 648
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->switchDefaultCocktail()V

    goto :goto_0
.end method

.method public systemRunning(Z)V
    .locals 5
    .param p1, "safeMode"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSafeMode:Z

    .line 140
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->registerBroadcastReceiver()V

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const-string v3, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->bootCompleted()V

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unbindRemoteViewsService(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public unlockCocktailBar(I)V
    .locals 2
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->showAndLockCocktailBar(ZI)V

    .line 747
    return-void
.end method

.method public unregisterClient(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "client"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mClientManager:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->unregisterClient(Landroid/os/IBinder;)V

    .line 833
    return-void
.end method

.method public unregisterCocktailBarFeedsListenerCallback(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFeedsManager:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->unregisterFeedsListenerCallback(Landroid/os/IBinder;)V

    .line 817
    return-void
.end method

.method public unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 794
    return-void
.end method

.method public updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p3, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 355
    :cond_0
    if-nez p2, :cond_1

    .line 356
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCocktail : cocktailInfo is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktail(Ljava/lang/String;ILcom/samsung/android/cocktailbar/CocktailInfo;)V

    goto :goto_0
.end method

.method public updateCocktailBarPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updatePosition(I)V

    .line 620
    return-void
.end method

.method public updateCocktailBarStateFromSystemInternal(I)V
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateStateFromSystem(I)V

    .line 778
    return-void
.end method

.method public updateCocktailBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateVisibility(I)V

    .line 774
    return-void
.end method

.method public updateCocktailBarWindowType(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "windowType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateWindowType(Ljava/lang/String;I)V

    .line 626
    return-void
.end method

.method public updateFeeds(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    .local p3, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateFeeds(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0
.end method

.method public updateLongpressGesture(Z)V
    .locals 1
    .param p1, "bEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 675
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    .line 676
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateLongpressGesture(Z)V

    .line 677
    return-void
.end method

.method public updateSysfsBarLength(I)V
    .locals 1
    .param p1, "barLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 687
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    .line 688
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsBarLength(I)V

    .line 689
    return-void
.end method

.method public updateSysfsDeadZone(I)V
    .locals 1
    .param p1, "deadzone"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 681
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    .line 682
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsDeadZone(I)V

    .line 683
    return-void
.end method

.method public updateWakeupArea(I)V
    .locals 1
    .param p1, "area"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    .line 670
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupArea(I)V

    .line 671
    return-void
.end method

.method public updateWakeupGesture(IZ)V
    .locals 1
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 663
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    .line 665
    return-void
.end method

.method public wakeupCocktailBarInternal(ZII)V
    .locals 3
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 692
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->getWakeUpState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->wakeupCocktailBar(ZII)V

    .line 699
    :cond_1
    :goto_0
    return-void

    .line 696
    :cond_2
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip wakeupCocktailBar reason("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
