.class public final Lcom/android/server/DeviceIdleController$LocalService;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V
    .locals 8
    .param p1, "appId"    # I
    .param p2, "duration"    # J
    .param p4, "sync"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v2, 0x0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V

    .line 874
    return-void
.end method

.method public addPowerSaveWhitelistExceptIdle(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v5

    .line 883
    const/4 v3, 0x0

    .line 885
    .local v3, "whitelistChanged":Z
    if-nez p1, :cond_0

    .line 886
    :try_start_0
    monitor-exit v5

    .line 909
    :goto_0
    return-void

    .line 888
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 889
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 892
    :try_start_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const v6, 0xa200

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 896
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    const/4 v3, 0x1

    .line 888
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 904
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 905
    :try_start_2
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)V

    .line 906
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)V

    .line 908
    :cond_3
    monitor-exit v5

    goto :goto_0

    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 900
    .restart local v1    # "i":I
    .restart local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public removePowerSaveWhitelistExceptIdle(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 912
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v4

    .line 913
    const/4 v2, 0x0

    .line 915
    .local v2, "whitelistChanged":Z
    if-nez p1, :cond_0

    .line 916
    :try_start_0
    monitor-exit v4

    .line 932
    :goto_0
    return-void

    .line 918
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 919
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 920
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 921
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 922
    const/4 v2, 0x1

    .line 918
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 927
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 928
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)V

    .line 929
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)V

    .line 931
    :cond_3
    monitor-exit v4

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setNetworkPolicyTempWhitelistCallbackInternal(Ljava/lang/Runnable;)V

    .line 878
    return-void
.end method
