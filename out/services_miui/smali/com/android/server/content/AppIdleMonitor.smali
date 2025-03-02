.class Lcom/android/server/content/AppIdleMonitor;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "AppIdleMonitor.java"


# instance fields
.field private mAppIdleParoleOn:Z

.field private final mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 1
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/content/AppIdleMonitor;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 37
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 38
    iget-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/content/AppIdleMonitor;->mAppIdleParoleOn:Z

    .line 40
    iget-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method isAppIdle(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/content/AppIdleMonitor;->mAppIdleParoleOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 60
    if-eqz p3, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/SyncManager;->onAppNotIdle(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onParoleStateChanged(Z)V
    .locals 0
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/content/AppIdleMonitor;->setAppIdleParoleOn(Z)V

    .line 67
    return-void
.end method

.method setAppIdleParoleOn(Z)V
    .locals 3
    .param p1, "appIdleParoleOn"    # Z

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/content/AppIdleMonitor;->mAppIdleParoleOn:Z

    if-ne v0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/content/AppIdleMonitor;->mAppIdleParoleOn:Z

    .line 48
    iget-boolean v0, p0, Lcom/android/server/content/AppIdleMonitor;->mAppIdleParoleOn:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mSyncManager:Lcom/android/server/content/SyncManager;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncManager;->onAppNotIdle(Ljava/lang/String;I)V

    goto :goto_0
.end method
