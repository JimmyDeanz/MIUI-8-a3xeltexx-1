.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$MyHandler;,
        Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    }
.end annotation


# static fields
.field public static final DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final DALTONIZER_DISABLED:I = -0x1

.field public static final DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field final mHandler:Landroid/os/Handler;

.field private final mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndexLock:Ljava/lang/Object;

.field mIsEnabled:Z

.field mIsHighTextContrastEnabled:Z

.field mIsTouchExplorationEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "userId"    # I

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIndexLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 172
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 226
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyHandler;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 227
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    .line 228
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 229
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked()V

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyAccessibilityStateChanged()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyTouchExplorationStateChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyHighTextContrastStateChanged()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/accessibility/AccessibilityManager;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    sget-object v4, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v4

    .line 194
    :try_start_0
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v3, :cond_1

    .line 196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 203
    :cond_0
    const/4 v2, -0x2

    .line 207
    .local v2, "userId":I
    :goto_0
    const-string v3, "accessibility"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 208
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 210
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    :goto_1
    new-instance v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v3, p0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    .line 212
    .end local v0    # "iBinder":Landroid/os/IBinder;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v3

    .line 205
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .restart local v2    # "userId":I
    goto :goto_0

    .line 208
    .restart local v0    # "iBinder":Landroid/os/IBinder;
    :cond_3
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    goto :goto_1

    .line 212
    .end local v0    # "iBinder":Landroid/os/IBinder;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_0

    .line 620
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked()V

    .line 622
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method private handleNotifyAccessibilityStateChanged()V
    .locals 5

    .prologue
    .line 645
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 646
    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 647
    .local v1, "isEnabled":Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 650
    .local v2, "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    invoke-interface {v2, v1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    goto :goto_0

    .line 647
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isEnabled":Z
    .end local v2    # "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 652
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "isEnabled":Z
    :cond_0
    return-void
.end method

.method private handleNotifyHighTextContrastStateChanged()V
    .locals 5

    .prologue
    .line 673
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 674
    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 675
    .local v1, "isHighTextContrastEnabled":Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .line 678
    .local v2, "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    invoke-interface {v2, v1}, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;->onHighTextContrastStateChanged(Z)V

    goto :goto_0

    .line 675
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isHighTextContrastEnabled":Z
    .end local v2    # "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 680
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "isHighTextContrastEnabled":Z
    :cond_0
    return-void
.end method

.method private handleNotifyTouchExplorationStateChanged()V
    .locals 5

    .prologue
    .line 659
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 660
    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 661
    .local v1, "isTouchExplorationEnabled":Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 664
    .local v2, "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    invoke-interface {v2, v1}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    goto :goto_0

    .line 661
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isTouchExplorationEnabled":Z
    .end local v2    # "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 666
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "isTouchExplorationEnabled":Z
    :cond_0
    return-void
.end method

.method private setStateLocked(I)V
    .locals 8
    .param p1, "stateFlags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 543
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_4

    move v0, v6

    .line 544
    .local v0, "enabled":Z
    :goto_0
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_5

    move v2, v6

    .line 546
    .local v2, "touchExplorationEnabled":Z
    :goto_1
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_0

    move v1, v6

    .line 549
    .local v1, "highTextContrastEnabled":Z
    :cond_0
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 550
    .local v3, "wasEnabled":Z
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 551
    .local v5, "wasTouchExplorationEnabled":Z
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 554
    .local v4, "wasHighTextContrastEnabled":Z
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 555
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 556
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 558
    if-eq v3, v0, :cond_1

    .line 559
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 562
    :cond_1
    if-eq v5, v2, :cond_2

    .line 563
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 566
    :cond_2
    if-eq v4, v1, :cond_3

    .line 567
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 569
    :cond_3
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "highTextContrastEnabled":Z
    .end local v2    # "touchExplorationEnabled":Z
    .end local v3    # "wasEnabled":Z
    .end local v4    # "wasHighTextContrastEnabled":Z
    .end local v5    # "wasTouchExplorationEnabled":Z
    :cond_4
    move v0, v1

    .line 543
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_5
    move v2, v1

    .line 544
    goto :goto_1
.end method

.method private tryConnectToServiceLocked()V
    .locals 6

    .prologue
    .line 626
    const-string v4, "accessibility"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 627
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 630
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 632
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v3

    .line 633
    .local v3, "stateFlags":I
    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    .line 634
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    .end local v3    # "stateFlags":I
    :catch_0
    move-exception v1

    .line 636
    .local v1, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "AccessibilityManagerService is dead"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public OnStartGestureWakeup()Z
    .locals 4

    .prologue
    .line 1045
    const/4 v1, 0x0

    .line 1047
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->OnStartGestureWakeup()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1051
    :goto_0
    return v1

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "OnStartGestureWakeup Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public OnStopGestureWakeup()Z
    .locals 4

    .prologue
    .line 1062
    const/4 v1, 0x0

    .line 1064
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->OnStopGestureWakeup()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1068
    :goto_0
    return v1

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "OnStopGestureWakeup Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .locals 6
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .prologue
    const/4 v3, -0x1

    .line 582
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 583
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 584
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 585
    monitor-exit v4

    .line 594
    :goto_0
    return v3

    .line 587
    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 588
    .local v2, "userId":I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    :try_start_1
    invoke-interface {v1, p1, p2, v2}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 588
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 591
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "userId":I
    :catch_0
    move-exception v0

    .line 592
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while adding an accessibility interaction connection. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .prologue
    .line 468
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .prologue
    .line 520
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .prologue
    .line 493
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public assistantMenuRegister(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 804
    :try_start_0
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuRegister invoking from manager start:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->assistantMenuRegister(Landroid/os/IBinder;)V

    .line 806
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuRegister invoking from manager end:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuRegister Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public assistantMenuUpdate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 823
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 824
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuUpdate invoking from manager:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    return-void

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuUpdate Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableMagnifier()V
    .locals 3

    .prologue
    .line 921
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->disableMagnifier()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "enableMagnifier Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableMagnifier(IIF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .prologue
    .line 890
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->enableMagnifier(IIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :goto_0
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "enableMagnifier Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableMagnifierByDisplayID(IIFI)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F
    .param p4, "displayId"    # I

    .prologue
    .line 908
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/accessibility/IAccessibilityManager;->enableMagnifierByDisplayID(IIFI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "enableMagnifier Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 375
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 377
    .local v2, "infoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 378
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 379
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public getClearableActiveNotificationsCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 1105
    const/4 v0, 0x0

    .line 1107
    .local v0, "countable":I
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->getClearableActiveNotificationsCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1111
    :goto_0
    return v0

    .line 1108
    :catch_0
    move-exception v1

    .line 1109
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "getClearableActiveNotificationsCount Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .locals 6
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 435
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 436
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    monitor-exit v5

    .line 454
    :goto_0
    return-object v4

    .line 439
    :cond_0
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 440
    .local v3, "userId":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    const/4 v2, 0x0

    .line 444
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_1
    invoke-interface {v1, p1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 451
    :goto_1
    if-eqz v2, :cond_1

    .line 452
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 440
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 448
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v3    # "userId":I
    :catch_0
    move-exception v0

    .line 449
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 454
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 393
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 394
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    monitor-exit v5

    .line 412
    :goto_0
    return-object v4

    .line 397
    :cond_0
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 398
    .local v3, "userId":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    const/4 v2, 0x0

    .line 402
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_1
    invoke-interface {v1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 409
    :goto_1
    if-eqz v2, :cond_1

    .line 410
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 398
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 406
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v3    # "userId":I
    :catch_0
    move-exception v0

    .line 407
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 412
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method public hideMagnifier()V
    .locals 3

    .prologue
    .line 955
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    :goto_0
    return-void

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "setMagnificationSpec Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public interrupt()V
    .locals 6

    .prologue
    .line 345
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 346
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 347
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 348
    monitor-exit v4

    .line 363
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v3, :cond_1

    .line 351
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Accessibility off. Did you forget to check that?"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 353
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    :try_start_1
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 354
    .local v2, "userId":I
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :try_start_2
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while requesting interrupt from all services. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isColorBlind([I)Z
    .locals 4
    .param p1, "nums"    # [I

    .prologue
    .line 731
    const/4 v1, 0x0

    .line 733
    .local v1, "retVal":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->isColorBlind([I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 737
    :goto_0
    return v1

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "isColorBlind Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 247
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 248
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 249
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    .line 250
    const/4 v1, 0x0

    monitor-exit v2

    .line 252
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    monitor-exit v2

    goto :goto_0

    .line 253
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHighTextContrastEnabled()Z
    .locals 3

    .prologue
    .line 283
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 284
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 285
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    .line 286
    const/4 v1, 0x0

    monitor-exit v2

    .line 288
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    monitor-exit v2

    goto :goto_0

    .line 289
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isScreenCurtainRunning()Z
    .locals 4

    .prologue
    .line 1077
    const/4 v1, 0x0

    .line 1079
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->isScreenCurtainRunning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1083
    :goto_0
    return v1

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "isScreenCurtainRunning Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isTopActivityInKnoxMode()Z
    .locals 4

    .prologue
    .line 1115
    const/4 v1, 0x0

    .line 1117
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->isTopActivityInKnoxMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1121
    :goto_0
    return v1

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "isTopActivityInKnoxMode Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 3

    .prologue
    .line 262
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 263
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 264
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    .line 265
    const/4 v1, 0x0

    monitor-exit v2

    .line 267
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    monitor-exit v2

    goto :goto_0

    .line 268
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTwoFingerGestureRecognitionEnabled()Z
    .locals 4

    .prologue
    .line 987
    const/4 v1, 0x0

    .line 989
    .local v1, "value":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->isTwoFingerGestureRecognitionEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 993
    :goto_0
    return v1

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "isTwoFingerGestureRecognitionEnabled Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isUniversalSwitchEnabled()Z
    .locals 4

    .prologue
    .line 1001
    const/4 v1, 0x0

    .line 1003
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->isUniversalSwitchEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1007
    :goto_0
    return v1

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "isUniversalSwitchEnabled Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openGlobalActions()V
    .locals 3

    .prologue
    .line 872
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->openGlobalActions()V

    .line 873
    const-string v1, "AccessibilityManager"

    const-string v2, "global actions from manager:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "global actions Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reboot(Z)V
    .locals 3
    .param p1, "isConfirm"    # Z

    .prologue
    .line 854
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->reboot(Z)V

    .line 855
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "reboot from manager:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "reboot Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerGestureListenerForLauncher(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 1018
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->registerGestureListenerForLauncher(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1022
    :goto_0
    return v1

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "registerGestureListenerForLauncher Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 4
    .param p1, "windowToken"    # Landroid/view/IWindow;

    .prologue
    .line 605
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 606
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 607
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 608
    monitor-exit v3

    .line 616
    :goto_0
    return-void

    .line 610
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while removing an accessibility interaction connection. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 610
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .prologue
    .line 480
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .prologue
    .line 534
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .prologue
    .line 505
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 308
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 309
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v4

    .line 310
    .local v4, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v4, :cond_1

    .line 311
    monitor-exit v7

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v6, :cond_2

    .line 314
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v8, "Accessibility off. Did you forget to check that?"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    .end local v4    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 316
    .restart local v4    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_2
    :try_start_1
    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 317
    .local v5, "userId":I
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    const/4 v0, 0x0

    .line 320
    .local v0, "doRecycle":Z
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 324
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 325
    .local v2, "identityToken":J
    invoke-interface {v4, p1, v5}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v0

    .line 326
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 330
    .end local v2    # "identityToken":J
    :catch_0
    move-exception v1

    .line 331
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "AccessibilityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error during sending "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 333
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 333
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    if-eqz v0, :cond_3

    .line 334
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :cond_3
    throw v6
.end method

.method public setColorBlind(ZF)Z
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "userParameter"    # F

    .prologue
    .line 720
    const/4 v1, 0x0

    .line 722
    .local v1, "retVal":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setColorBlind(ZF)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 726
    :goto_0
    return v1

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setColorBlind Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScreenCurtain()V
    .locals 3

    .prologue
    .line 1093
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenCurtain()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :goto_0
    return-void

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "setScreenCurtain Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTwoFingerGestureRecognitionEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 971
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_0

    .line 972
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Accessibility off. Did you forget to check that?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 975
    :cond_0
    :try_start_0
    const-string v1, "AccessibilityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccessibilityManager - setTwoFingerGestureRecognitionEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setTwoFingerGestureRecognitionEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "setTwoFingerGestureRecognitionEnabled Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 785
    const/4 v1, 0x0

    .line 787
    .local v1, "retVal":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 791
    :goto_0
    return v1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setmDNIeAccessibilityMode Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # [I

    .prologue
    .line 749
    const/4 v1, 0x0

    .line 751
    .local v1, "retVal":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 755
    :goto_0
    return v1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setmDNIeColorBlind Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setmDNIeNegative(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 767
    const/4 v1, 0x0

    .line 769
    .local v1, "retVal":Z
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 773
    :goto_0
    return v1

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setmDNIeNegative Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showMagnifier(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 937
    :try_start_0
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 938
    .local v1, "spec":Landroid/view/MagnificationSpec;
    iput p1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 939
    iput p2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 942
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, v1}, Landroid/view/accessibility/IAccessibilityManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    .end local v1    # "spec":Landroid/view/MagnificationSpec;
    :goto_0
    return-void

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setMagnificationSpec Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shutdown(Z)V
    .locals 3
    .param p1, "isConfirm"    # Z

    .prologue
    .line 839
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->shutdown(Z)V

    .line 840
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "shutdown from manager:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "shutdown Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterGestureListenerForLauncher()V
    .locals 3

    .prologue
    .line 1031
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->unregisterGestureListenerForLauncher()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "unregisterGestureListenerForLauncher Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
