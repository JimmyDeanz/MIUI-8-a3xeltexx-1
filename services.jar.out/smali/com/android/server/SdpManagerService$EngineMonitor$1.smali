.class Lcom/android/server/SdpManagerService$EngineMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$EngineMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$EngineMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService$EngineMonitor;)V
    .locals 0

    .prologue
    .line 3938
    iput-object p1, p0, Lcom/android/server/SdpManagerService$EngineMonitor$1;->this$1:Lcom/android/server/SdpManagerService$EngineMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3940
    const-string v5, "SdpManagerService.monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3942
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 3943
    .local v4, "userid":I
    iget-object v5, p0, Lcom/android/server/SdpManagerService$EngineMonitor$1;->this$1:Lcom/android/server/SdpManagerService$EngineMonitor;

    # invokes: Lcom/android/server/SdpManagerService$EngineMonitor;->schedule(I)V
    invoke-static {v5, v4}, Lcom/android/server/SdpManagerService$EngineMonitor;->access$4700(Lcom/android/server/SdpManagerService$EngineMonitor;I)V

    .line 3971
    .end local v4    # "userid":I
    :cond_0
    :goto_0
    return-void

    .line 3944
    :cond_1
    const-string v5, "com.sec.knox.ENGINE_UNLOCK_TIMEOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3945
    const-string/jumbo v5, "trust"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v2

    .line 3948
    .local v2, "tm":Landroid/app/trust/ITrustManager;
    const-string/jumbo v5, "userid"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3949
    .restart local v4    # "userid":I
    iget-object v5, p0, Lcom/android/server/SdpManagerService$EngineMonitor$1;->this$1:Lcom/android/server/SdpManagerService$EngineMonitor;

    iget-object v5, v5, Lcom/android/server/SdpManagerService$EngineMonitor;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;
    invoke-static {v5, v4}, Lcom/android/server/SdpManagerService;->access$4800(Lcom/android/server/SdpManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 3951
    .local v3, "ui":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-interface {v2, v4}, Landroid/app/trust/ITrustManager;->isDeviceLocked(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3952
    const-string v5, "SdpManagerService.monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device user : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : unlocked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    iget-object v5, p0, Lcom/android/server/SdpManagerService$EngineMonitor$1;->this$1:Lcom/android/server/SdpManagerService$EngineMonitor;

    iget-object v5, v5, Lcom/android/server/SdpManagerService$EngineMonitor;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/SdpManagerService;->access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3954
    :try_start_1
    iget-object v5, p0, Lcom/android/server/SdpManagerService$EngineMonitor$1;->this$1:Lcom/android/server/SdpManagerService$EngineMonitor;

    iget-object v5, v5, Lcom/android/server/SdpManagerService$EngineMonitor;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v5, v4}, Lcom/android/server/SdpManagerService;->access$4900(Lcom/android/server/SdpManagerService;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    .line 3955
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v1, :cond_3

    .line 3956
    const-string v5, "SdpManagerService.monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SDP info : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    .line 3958
    const-string v5, "SdpManagerService.monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SDP engine { userid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state: locked } // ERROR"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    iget-object v5, p0, Lcom/android/server/SdpManagerService$EngineMonitor$1;->this$1:Lcom/android/server/SdpManagerService$EngineMonitor;

    const-string v7, "KNOX SDP"

    const-string/jumbo v8, "unlock failed"

    # invokes: Lcom/android/server/SdpManagerService$EngineMonitor;->notifyUser(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v7, v8}, Lcom/android/server/SdpManagerService$EngineMonitor;->access$5000(Lcom/android/server/SdpManagerService$EngineMonitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 3965
    :cond_2
    :goto_1
    monitor-exit v6

    goto/16 :goto_0

    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3967
    :catch_0
    move-exception v0

    .line 3968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3962
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_3
    :try_start_3
    const-string v5, "SdpManagerService.monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find SDP info for user:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    iget-object v5, p0, Lcom/android/server/SdpManagerService$EngineMonitor$1;->this$1:Lcom/android/server/SdpManagerService$EngineMonitor;

    const-string v7, "KNOX SDP"

    const-string/jumbo v8, "no engine info"

    # invokes: Lcom/android/server/SdpManagerService$EngineMonitor;->notifyUser(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v7, v8}, Lcom/android/server/SdpManagerService$EngineMonitor;->access$5000(Lcom/android/server/SdpManagerService$EngineMonitor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
