.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->connectScanningService()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;Z)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;I)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$24300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFirmwareType:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "reset skipWifiStateBroadcast flag, broadcast wifi state again"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .local v0, "isAirplaneMode":Z
    :goto_1
    if-eqz v0, :cond_3

    const-string v2, "WifiStateMachine"

    const-string v3, "[FCC]Airplane on, setFccChannel(0)!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0

    .end local v0    # "isAirplaneMode":Z
    :cond_2
    move v0, v1

    goto :goto_1

    .restart local v0    # "isAirplaneMode":Z
    :cond_3
    const-string v1, "WifiStateMachine"

    const-string v2, "[FCC]Airplane off, setFccChannel(-1)!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, -0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/BaseDhcpStateMachine;->doQuit()V

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 66
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move-object/from16 v2, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    const/16 v20, 0x0

    .local v20, "edmArgs":Landroid/os/Bundle;
    const/16 v39, -0x1

    .local v39, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    sparse-switch v59, :sswitch_data_0

    const/16 v59, 0x0

    :goto_0
    return v59

    :sswitch_0
    const-string v59, "VZW"

    sget-object v60, Lcom/android/server/wifi/WifiStateMachine;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFound:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$24400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-eqz v59, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFoundCount:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$24504(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x32

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getShowInfoIntent(I)Landroid/content/Intent;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24600(Lcom/android/server/wifi/WifiStateMachine;I)Landroid/content/Intent;

    move-result-object v17

    .local v17, "disconnectToastIntent":Landroid/content/Intent;
    const-string v59, "ssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSsidForConnection:Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, v17

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v17

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFound:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFoundCount:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24502(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSsidForConnection:Ljava/lang/String;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24702(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .end local v17    # "disconnectToastIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    const/16 v59, 0x1

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .local v8, "bssid":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$24900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v60

    monitor-enter v60

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v62, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v62 .. v62}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v62

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v61

    move-object/from16 v0, v59

    move/from16 v1, v61

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$24802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    monitor-exit v60
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v59

    const v60, 0x2402b

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    :catchall_0
    move-exception v59

    :try_start_1
    monitor-exit v60
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v59

    .end local v8    # "bssid":Ljava/lang/String;
    :sswitch_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "AUTHENTICATION_FAILURE_EVENT WpsInprogress : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v59

    const/16 v60, 0x2

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-nez v59, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x20037

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$25000(Lcom/android/server/wifi/WifiStateMachine;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v60

    const v61, 0x24007

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v62, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v63, v0

    invoke-virtual/range {v60 .. v63}, Lcom/android/server/wifi/SupplicantStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v30, "Wi-Fi is failed to connect to "

    .local v30, "logMessage":Ljava/lang/String;
    if-eqz v10, :cond_b

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v59, v0

    if-eqz v59, :cond_b

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " network using "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Ljava/util/BitSet;->get(I)Z

    move-result v59

    if-nez v59, :cond_6

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Ljava/util/BitSet;->get(I)Z

    move-result v59

    if-nez v59, :cond_6

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v59, v0

    const/16 v60, 0x4

    invoke-virtual/range {v59 .. v60}, Ljava/util/BitSet;->get(I)Z

    move-result v59

    if-nez v59, :cond_6

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v59, v0

    const/16 v60, 0x8

    invoke-virtual/range {v59 .. v60}, Ljava/util/BitSet;->get(I)Z

    move-result v59

    if-nez v59, :cond_6

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v59, v0

    const/16 v60, 0x5

    invoke-virtual/range {v59 .. v60}, Ljava/util/BitSet;->get(I)Z

    move-result v59

    if-eqz v59, :cond_9

    :cond_6
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, "802.11-2012 channel."

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v61

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " Reason: Authentication failure."

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->auditLog(ZLjava/lang/String;)V
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25100(Lcom/android/server/wifi/WifiStateMachine;ZLjava/lang/String;)V

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "setDetailed state psk authentication failed: "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setVerifiedPassword(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v60

    const-string v61, "verified_password"

    const-string v62, "0"

    invoke-virtual/range {v59 .. v62}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_1

    :cond_9
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v59, v0

    if-eqz v59, :cond_7

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v59

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_a

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, "EAP-TLS channel"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v59, "WifiStateMachine"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Wi-Fi is failed to connect to "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " network using EAP-TLS channel"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, "802.1X channel"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v59, "WifiStateMachine"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Wi-Fi is connected to "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " network using 802.1X channel"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " network."

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_2

    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "logMessage":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    .local v49, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const v60, 0x2400d

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_c

    const-string v21, "temp-disabled"

    .local v21, "en":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "ConnectModeState SSID state="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " nid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v61, v0

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " ["

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "]"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$24900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v60

    monitor-enter v60

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v61

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v62, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const v63, 0x2400e

    move/from16 v0, v59

    move/from16 v1, v63

    if-ne v0, v1, :cond_d

    const/16 v59, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v61

    move/from16 v1, v62

    move/from16 v2, v59

    move-object/from16 v3, v49

    move-object/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    monitor-exit v60

    goto/16 :goto_1

    :catchall_1
    move-exception v59

    monitor-exit v60
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v59

    .end local v21    # "en":Ljava/lang/String;
    :cond_c
    const-string v21, "re-enabled"

    goto/16 :goto_3

    .restart local v21    # "en":Ljava/lang/String;
    :cond_d
    const/16 v59, 0x0

    goto :goto_4

    .end local v21    # "en":Ljava/lang/String;
    .end local v49    # "substr":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v47

    .local v47, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v47 .. v47}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v59

    if-nez v59, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v59

    sget-object v60, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Detected an interface down, restart driver"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$10800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$25200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x2000b

    const-wide/16 v62, 0x1388

    move-object/from16 v0, v59

    move/from16 v1, v60

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_1

    :cond_f
    const-string v59, "ENABLE_SAME_SSID_ONLY"

    const-string v60, "ENABLE"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_11

    sget-object v59, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v59

    if-eq v0, v1, :cond_10

    sget-object v59, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    move/from16 v59, v0

    if-eqz v59, :cond_11

    const-string v59, "WifiStateMachine"

    const-string v60, "receive WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT, set mHandoverState false!!"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v59

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$25300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-nez v59, :cond_13

    sget-object v59, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v59

    sget-object v60, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    if-eq v0, v1, :cond_13

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$25400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_13
    sget-object v59, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$25500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v59

    if-eqz v59, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$25500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/IpReachabilityMonitor;->probeAll()V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v33

    .local v33, "networkId":I
    invoke-static/range {v47 .. v47}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v59

    if-eqz v59, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v59

    if-nez v59, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v59

    if-eqz v59, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v56

    .local v56, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v56, :cond_15

    move-object/from16 v0, v56

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move/from16 v59, v0

    if-nez v59, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->isCaptivePortalException()Z

    move-result v59

    if-eqz v59, :cond_16

    const/16 v59, 0x0

    move/from16 v0, v59

    move-object/from16 v1, v56

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    const-string v61, "captive_portal"

    const-string v62, "0"

    invoke-virtual/range {v59 .. v62}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v56

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v60, v0

    const/16 v61, 0x0

    invoke-virtual/range {v59 .. v61}, Lcom/android/server/wifi/WifiConfigStore;->updateIsCaptivePortal(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .end local v56    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_15
    :goto_5
    sget-object v59, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/server/wifi/StateChangeResult;

    .local v48, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    move/from16 v60, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentAssociateNetworkId:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$25602(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .end local v48    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    .restart local v56    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_16
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_15

    const-string v59, "WifiStateMachine"

    const-string v60, "Previously un-authenticated captive portal AP. Connect and check again."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v33    # "networkId":I
    .end local v47    # "state":Landroid/net/wifi/SupplicantState;
    .end local v56    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v59

    if-nez v59, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Not authorized to update network  config="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " cnid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " uid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$25700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, -0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$25800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v10, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x20034

    const/16 v61, -0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    move-object/from16 v0, v59

    move/from16 v1, v60

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v41

    .local v41, "res":I
    if-gez v41, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    :cond_1a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x20034

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .local v12, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v12, :cond_1a

    if-eqz v10, :cond_1a

    iget v0, v12, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v59, v0

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v60, v0

    move/from16 v0, v59

    move/from16 v1, v60

    if-ge v0, v1, :cond_1a

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v59, v0

    const/16 v60, 0x2

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_1a

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_1c

    const-string v59, "WifiStateMachine"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CMD_ADD_OR_UPDATE_NETWORK - setLastSelectedConfiguration : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    move-object/from16 v0, v59

    move/from16 v1, v60

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v59

    move-object/from16 v0, v59

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v60, v0

    add-int/lit8 v60, v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v59

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, -0x3

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-virtual/range {v59 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_6

    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v41    # "res":I
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .local v32, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v60

    move/from16 v2, v32

    move/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v59

    if-nez v59, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Not authorized to remove network  cnid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " uid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, -0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiNetworkLists;->removeNetworkMap(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmRemoveNetwork(I)Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26100(Lcom/android/server/wifi/WifiStateMachine;I)Z

    move-result v59

    if-nez v59, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, -0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v35

    .local v35, "ok":Z
    if-nez v35, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v61, v0

    if-eqz v35, :cond_20

    const/16 v59, 0x1

    :goto_7
    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    move/from16 v3, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_20
    const/16 v59, -0x1

    goto :goto_7

    .end local v32    # "netId":I
    .end local v35    # "ok":Z
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v59, v0

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_21

    const/16 v16, 0x1

    .local v16, "disableOthers":Z
    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .restart local v32    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "No network with id = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, -0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "disableOthers":Z
    .end local v32    # "netId":I
    :cond_21
    const/16 v16, 0x0

    goto :goto_8

    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "disableOthers":Z
    .restart local v32    # "netId":I
    :cond_22
    if-eqz v16, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v59

    const/16 v60, 0x1

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v32

    move/from16 v2, v60

    move/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_23

    const-string v59, "WifiStateMachine"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CMD_ENABLE_NETWORK - setLastSelectedConfiguration : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v59

    move-object/from16 v0, v59

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v60, v0

    add-int/lit8 v60, v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v59

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    const-string v59, "KT_Specific"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfigDisconnectApThreshold:Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_24

    new-instance v26, Landroid/content/Intent;

    const-string v59, "android.net.wifi.REMOVE_BLACKLIST"

    move-object/from16 v0, v26

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v26, "intent":Landroid/content/Intent;
    const-string v59, "netId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v26

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .end local v26    # "intent":Landroid/content/Intent;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "any"

    move-object/from16 v0, v59

    move/from16 v1, v32

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    .local v52, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v32

    move/from16 v2, v16

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v35

    .restart local v35    # "ok":Z
    if-nez v35, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v61, v0

    if-eqz v35, :cond_26

    const/16 v59, 0x1

    :goto_9
    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    move/from16 v3, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_26
    const/16 v59, -0x1

    goto :goto_9

    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "disableOthers":Z
    .end local v32    # "netId":I
    .end local v35    # "ok":Z
    .end local v52    # "uid":I
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-nez v59, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks(Z)V

    goto/16 :goto_1

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks(Z)V

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    const/16 v61, 0x5

    invoke-virtual/range {v59 .. v61}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v59

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25013

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25012

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Ljava/lang/String;

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_0

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x20049

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    if-nez v59, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v60

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Ljava/lang/String;

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v60

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Ljava/lang/String;

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->addToSBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    if-nez v59, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->clearSBlacklist()Z

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v35

    .restart local v35    # "ok":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "did save config "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    const v61, 0x2003a

    if-eqz v35, :cond_2c

    const/16 v59, 0x1

    :goto_a
    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    move/from16 v3, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    const-string v59, "backup"

    invoke-static/range {v59 .. v59}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v22

    .local v22, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v22, :cond_0

    :try_start_3
    const-string v59, "com.android.providers.settings"

    move-object/from16 v0, v22

    move-object/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v59

    goto/16 :goto_1

    .end local v22    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_2c
    const/16 v59, -0x1

    goto :goto_a

    .end local v35    # "ok":Z
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v61

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    .restart local v33    # "networkId":I
    const/16 v24, 0x0

    .local v24, "identitySent":Z
    const/16 v19, -0x1

    .local v19, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    if-eqz v59, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v59, v0

    if-eqz v59, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v19

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    if-eqz v59, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v59, v0

    move/from16 v0, v59

    move/from16 v1, v33

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v59, v0

    const/16 v60, 0x3

    invoke-virtual/range {v59 .. v60}, Ljava/util/BitSet;->get(I)Z

    move-result v59

    if-eqz v59, :cond_30

    const/16 v59, 0x4

    move/from16 v0, v19

    move/from16 v1, v59

    if-eq v0, v1, :cond_2e

    const/16 v59, 0x5

    move/from16 v0, v19

    move/from16 v1, v59

    if-eq v0, v1, :cond_2e

    const/16 v59, 0x6

    move/from16 v0, v19

    move/from16 v1, v59

    if-ne v0, v1, :cond_30

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    const-string v60, "phone"

    invoke-virtual/range {v59 .. v60}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/telephony/TelephonyManager;

    .local v50, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v50, :cond_30

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v25

    .local v25, "imsi":Ljava/lang/String;
    const-string v31, ""

    .local v31, "mccMnc":Ljava/lang/String;
    invoke-virtual/range {v50 .. v50}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v59

    const/16 v60, 0x5

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_2f

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v31

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v31

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$26400(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "identity":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v59

    if-nez v59, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    const/16 v24, 0x1

    .end local v23    # "identity":Ljava/lang/String;
    .end local v25    # "imsi":Ljava/lang/String;
    .end local v31    # "mccMnc":Ljava/lang/String;
    .end local v50    # "tm":Landroid/telephony/TelephonyManager;
    :cond_30
    if-nez v24, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/lang/String;

    .local v46, "ssid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v59, v0

    if-ltz v59, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    if-eqz v59, :cond_32

    if-eqz v46, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v59, v0

    if-eqz v59, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "\""

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "\""

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v60

    move-object/from16 v0, v60

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v60, v0

    const/16 v61, 0x0

    const-string v62, "AUTH_FAILED no identity"

    const/16 v63, 0x0

    invoke-virtual/range {v59 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v60

    const v61, 0x2400f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v62, v0

    const/16 v63, 0x1

    invoke-virtual/range {v60 .. v63}, Lcom/android/server/wifi/SupplicantStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, -0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_1

    .end local v19    # "eapMethod":I
    .end local v24    # "identitySent":Z
    .end local v33    # "networkId":I
    .end local v46    # "ssid":Ljava/lang/String;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/lang/String;

    .restart local v46    # "ssid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v59, v0

    if-ltz v59, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    if-eqz v59, :cond_34

    if-eqz v46, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v59, v0

    if-eqz v59, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "\""

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "\""

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v60

    move-object/from16 v0, v60

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v60, v0

    const/16 v61, 0x0

    const-string v62, "AUTH_FAILED no password"

    const/16 v63, 0x0

    invoke-virtual/range {v59 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v60

    const v61, 0x24074

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v62, v0

    const/16 v63, 0x1

    invoke-virtual/range {v60 .. v63}, Lcom/android/server/wifi/SupplicantStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, -0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_1

    .end local v46    # "ssid":Ljava/lang/String;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Received SUP_REQUEST_SIM_AUTH"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .local v40, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v40, :cond_37

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v59, v0

    const/16 v60, 0x4

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    :cond_35
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v59, v0

    const/16 v60, 0x5

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_36

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v59, v0

    const/16 v60, 0x6

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_0

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Invalid sim auth request"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v40    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v61

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v62

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v62

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    move-object/from16 v3, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, -0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v59

    if-eqz v59, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Reconnecting to give a chance to un-connected TLS networks"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    const/16 v59, 0x1

    goto/16 :goto_0

    :sswitch_1a
    const/4 v15, 0x0

    .local v15, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    if-eq v0, v1, :cond_38

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    :cond_38
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .restart local v32    # "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v43, v0

    .local v43, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " my state "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$26600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " nid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " roam="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    if-nez v10, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, v59

    move/from16 v1, v32

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " nid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, -0x1

    move-object/from16 v0, v59

    move/from16 v1, v60

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v42

    .local v42, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v10, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3a
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v59, v0

    move/from16 v0, v32

    move/from16 v1, v59

    if-eq v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " but got"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v59

    if-nez v59, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v59, v0

    const/16 v60, 0x2

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25002

    const/16 v61, 0x9

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v32

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v59

    if-eqz v59, :cond_3f

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v29, v0

    .local v29, "lastConnectUid":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v60

    move/from16 v2, v29

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v59

    if-eqz v59, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v59

    if-eqz v59, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-eqz v10, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v59

    if-nez v59, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, -0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move/from16 v1, v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$26702(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v59

    if-nez v59, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$25300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-eqz v59, :cond_40

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .end local v29    # "lastConnectUid":I
    :cond_3f
    const/16 v29, -0x1

    goto/16 :goto_b

    .restart local v29    # "lastConnectUid":I
    :cond_40
    if-eqz v15, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$27000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-nez v59, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-eqz v59, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-eqz v59, :cond_43

    const v13, 0xea60

    .local v13, "delay":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2000()Z

    move-result v59

    if-eqz v59, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Starting PNO alarm: "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$22600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v59

    const/16 v60, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v62

    int-to-long v0, v13

    move-wide/from16 v64, v0

    add-long v62, v62, v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPnoIntent:Landroid/app/PendingIntent;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v61

    move-object/from16 v0, v59

    move/from16 v1, v60

    move-wide/from16 v2, v62

    move-object/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .end local v13    # "delay":I
    :cond_43
    sget v59, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v59, v59, 0x1

    sput v59, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    goto/16 :goto_1

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Failed to connect config: "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " netId: "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25002

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "didDisconnect":Z
    .end local v29    # "lastConnectUid":I
    .end local v32    # "netId":I
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v43    # "roam":I
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z

    goto/16 :goto_1

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForUser(I)Z

    goto/16 :goto_1

    :sswitch_1d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .restart local v32    # "netId":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v59

    move-object/from16 v0, v59

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v60, v0

    add-int/lit8 v60, v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v59

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    const-string v59, "VZW"

    sget-object v60, Lcom/android/server/wifi/WifiStateMachine;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_45

    if-eqz v10, :cond_45

    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v59, v0

    if-eqz v59, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFound:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFoundCount:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24502(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSsidForConnection:Ljava/lang/String;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24702(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSccForecedConn:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$27502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    const/16 v53, 0x0

    .local v53, "updatedExisting":Z
    if-eqz v10, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    const/16 v61, 0x1

    move-object/from16 v0, v59

    move/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v59

    if-nez v59, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Not authorized to update network  config="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " cnid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " uid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$27600(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25002

    const/16 v61, 0x9

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_46
    const/16 v59, 0x1

    move/from16 v0, v59

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v11

    .local v11, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    .local v44, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v44, :cond_47

    move-object/from16 v10, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " configKey="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    const/16 v59, 0x0

    move/from16 v0, v59

    iput-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    const/16 v59, 0x0

    move/from16 v0, v59

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v53, 0x1

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$25800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v10, :cond_48

    const-string v59, "WifiStateMachine"

    const-string v60, "network not allowed"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25002

    const/16 v61, 0x9

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v59

    const/16 v60, 0x1

    move-object/from16 v0, v59

    move/from16 v1, v60

    invoke-virtual {v0, v10, v1}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v59

    if-nez v59, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Failed to connect config by MDM: "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " netId: "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25002

    const/16 v61, 0x9

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    move-object/from16 v0, v59

    move/from16 v1, v60

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v42

    .restart local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v32

    .end local v11    # "configKey":Ljava/lang/String;
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v44    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v10, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CONNECT_NETWORK no config for id="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " my state "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$27700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25002

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_4b
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v59, v0

    if-eqz v59, :cond_4c

    const-string v55, " skipped"

    .local v55, "wasSkipped":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CONNECT_NETWORK id="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " config="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " cnid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " supstate="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " my state "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$27800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " uid = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v59

    const-string v60, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v59 .. v60}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v59

    if-eqz v59, :cond_4d

    if-eqz v10, :cond_4d

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v59, v0

    if-eqz v59, :cond_4d

    const-string v59, "VerizonWiFiAccess"

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_4d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v45

    .local v45, "simState":I
    const/16 v59, 0x1

    move/from16 v0, v45

    move/from16 v1, v59

    if-ne v0, v1, :cond_4d

    const-string v59, "WifiStateMachine"

    const-string v60, "trying to connect without SIM, show alert dialog for VZW"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v59, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v60

    const v61, 0x10409e9

    invoke-virtual/range {v60 .. v61}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v60

    const v61, 0x10409e7

    const/16 v62, 0x1

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    const-string v64, "VerizonWiFiAccess"

    aput-object v64, v62, v63

    invoke-virtual/range {v60 .. v62}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v60

    const v61, 0x10403ef

    invoke-virtual/range {v60 .. v61}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v60

    new-instance v61, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState$3;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState$3;-><init>(Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;)V

    invoke-virtual/range {v59 .. v61}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .local v14, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v59

    const/16 v60, 0x7d8

    invoke-virtual/range {v59 .. v60}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .end local v14    # "dialog":Landroid/app/AlertDialog;
    .end local v45    # "simState":I
    .end local v55    # "wasSkipped":Ljava/lang/String;
    :cond_4c
    const-string v55, ""

    goto/16 :goto_c

    .restart local v55    # "wasSkipped":Ljava/lang/String;
    :cond_4d
    const-string v59, "SKT"

    sget-object v60, Lcom/android/server/wifi/WifiStateMachine;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_4e

    if-eqz v10, :cond_4e

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v59, v0

    if-eqz v59, :cond_4e

    const-string v59, "T wifi zone_secure"

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_4e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v45

    .restart local v45    # "simState":I
    const/16 v59, 0x1

    move/from16 v0, v45

    move/from16 v1, v59

    if-ne v0, v1, :cond_4e

    const-string v59, "WifiStateMachine"

    const-string v60, "trying to connect without SIM, show alert dialog for SKT"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v59, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v60

    const v61, 0x10409e7

    const/16 v62, 0x1

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    const-string v64, "T wifi zone_secure"

    aput-object v64, v62, v63

    invoke-virtual/range {v60 .. v62}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v60

    const v61, 0x10403ef

    invoke-virtual/range {v60 .. v61}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v60

    new-instance v61, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState$4;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState$4;-><init>(Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;)V

    invoke-virtual/range {v59 .. v61}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .restart local v14    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v59

    const/16 v60, 0x7d8

    invoke-virtual/range {v59 .. v60}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .end local v14    # "dialog":Landroid/app/AlertDialog;
    .end local v45    # "simState":I
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "any"

    move-object/from16 v0, v59

    move/from16 v1, v32

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    const/16 v60, 0x3f2

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_4f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    const/16 v60, 0x3e8

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_50

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "CONNECT_NETWORK"

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v59

    if-eqz v59, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25002

    const/16 v61, 0x9

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v59, v0

    const/16 v60, 0x2

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25002

    const/16 v61, 0x9

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26702(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/sec/enterprise/WifiPolicyCache;->getAutomaticConnectionToWifi()Z

    move-result v59

    if-nez v59, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move/from16 v1, v32

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAllowedNetId:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$27902(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCanConnectNow:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    :cond_53
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_54

    const-string v59, "WifiStateMachine"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "[selectNetwork] CONNECT_NETWORK : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const-string v59, "KT_Specific"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfigDisconnectApThreshold:Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_55

    new-instance v26, Landroid/content/Intent;

    const-string v59, "android.net.wifi.REMOVE_BLACKLIST"

    move-object/from16 v0, v26

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v26    # "intent":Landroid/content/Intent;
    const-string v59, "netId"

    move-object/from16 v0, v26

    move-object/from16 v1, v59

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v26

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .end local v26    # "intent":Landroid/content/Intent;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v37

    .local v37, "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v59

    const/16 v60, 0x1

    move-object/from16 v0, v59

    move/from16 v1, v32

    move/from16 v2, v60

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_56

    const-string v59, "WifiStateMachine"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CONNECT_NETWORK - setLastSelectedConfiguration : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    const/4 v15, 0x0

    .restart local v15    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    const/16 v60, -0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    move/from16 v0, v59

    move/from16 v1, v32

    if-eq v0, v1, :cond_57

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v32

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v61, v0

    move-object/from16 v0, v59

    move/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v59

    if-eqz v59, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v59

    if-eqz v59, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v59

    const v60, 0x25001

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25003

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x20037

    const-wide/16 v62, 0x2710

    move-object/from16 v0, v59

    move/from16 v1, v60

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    if-eqz v15, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_58
    if-eqz v53, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$28200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    if-ne v0, v1, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v59, v0

    move/from16 v0, v59

    move/from16 v1, v32

    if-ne v0, v1, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$28400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Failed to connect config: "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " netId: "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25002

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "didDisconnect":Z
    .end local v32    # "netId":I
    .end local v37    # "persist":Z
    .end local v53    # "updatedExisting":Z
    .end local v55    # "wasSkipped":Ljava/lang/String;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v59

    move-object/from16 v0, v59

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v60, v0

    add-int/lit8 v60, v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v59

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28602(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " my state "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$28700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25008

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v60

    invoke-direct {v0, v10}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28602(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v34, v0

    .local v34, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "SAVE_NETWORK id="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " config="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " nid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " supstate="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " my state "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$28800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const v60, 0x25007

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_5c

    const/4 v9, 0x1

    .local v9, "checkUid":Z
    :goto_d
    if-eqz v9, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v59

    if-nez v59, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Not authorized to update network  config="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " cnid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " uid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25008

    const/16 v61, 0x9

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v9    # "checkUid":Z
    :cond_5c
    const/4 v9, 0x0

    goto :goto_d

    .restart local v9    # "checkUid":Z
    :cond_5d
    if-eqz v10, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$25800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v10, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25008

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, -0x1

    move-object/from16 v0, v59

    move/from16 v1, v60

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v42

    .restart local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v59

    const/16 v60, -0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v59

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v60

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_60

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v59

    if-eqz v59, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Reconfiguring IP on connection"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_5f
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v59

    if-eqz v59, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Reconfiguring proxy on connection"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$7900(Lcom/android/server/wifi/WifiStateMachine;I)V

    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25009

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v1, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$29200(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2000()Z

    move-result v59

    if-eqz v59, :cond_61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Success save network nid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$24900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v60

    monitor-enter v60

    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const v61, 0x25007

    move/from16 v0, v59

    move/from16 v1, v61

    if-ne v0, v1, :cond_63

    const/16 v54, 0x1

    .local v54, "user":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v61, v0

    move-object/from16 v0, v59

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v38

    .local v38, "persistConnect":Z
    if-eqz v54, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v61, v0

    move-object/from16 v0, v59

    move/from16 v1, v61

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v59

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v61

    move-object/from16 v0, v59

    move/from16 v1, v61

    move/from16 v2, v54

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    monitor-exit v60

    goto/16 :goto_1

    .end local v38    # "persistConnect":Z
    .end local v54    # "user":Z
    :catchall_2
    move-exception v59

    monitor-exit v60
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v59

    :cond_63
    const/16 v54, 0x0

    goto :goto_e

    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Failed to save network"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25008

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v9    # "checkUid":Z
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v34    # "nid":I
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    .local v51, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v51, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    :goto_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .restart local v32    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v60

    move/from16 v2, v32

    move/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v59

    if-nez v59, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Not authorized to forget network  cnid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " uid="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25005

    const/16 v61, 0x9

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v32    # "netId":I
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v60

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto :goto_f

    .restart local v32    # "netId":I
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmRemoveNetwork(I)Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26100(Lcom/android/server/wifi/WifiStateMachine;I)Z

    move-result v59

    if-nez v59, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25005

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_67
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v59

    const-string v60, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v59 .. v60}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v59

    if-eqz v59, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    .local v7, "SSID":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_68

    const-string v59, "WifiStateMachine"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "current connection "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    if-eqz v7, :cond_6a

    const-string v59, "VerizonWiFi"

    move-object/from16 v0, v59

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_69

    const-string v59, "\"VerizonWiFi\""

    move-object/from16 v0, v59

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6a

    :cond_69
    const-string v59, "WifiStateMachine"

    const-string v60, "starting WIFI aggregation logoff thread "

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/Thread;

    new-instance v59, Landroid/net/wifi/LogoffRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Landroid/net/wifi/LogoffRunnable;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v59

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v6, "Logoff":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const-wide/16 v60, 0x7d0

    :try_start_5
    move-wide/from16 v0, v60

    invoke-virtual {v6, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v6    # "Logoff":Ljava/lang/Thread;
    .end local v7    # "SSID":Ljava/lang/String;
    :cond_6a
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v59

    if-eqz v59, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25006

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    const/16 v61, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29200(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .restart local v6    # "Logoff":Ljava/lang/Thread;
    .restart local v7    # "SSID":Ljava/lang/String;
    :catch_1
    move-exception v18

    .local v18, "e":Ljava/lang/InterruptedException;
    const-string v59, "WifiStateMachine"

    const-string v60, "interrupt in WIFI aggregation logoff thread -"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10

    .end local v6    # "Logoff":Ljava/lang/Thread;
    .end local v7    # "SSID":Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Failed to forget network"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25005

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v32    # "netId":I
    .end local v51    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_21
    const-string v59, "WifiStateMachine"

    const-string v60, "CMD_MDM_SAVE_NETWORK"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Queue;->isEmpty()Z

    move-result v59

    if-eqz v59, :cond_6c

    const-string v59, "WifiStateMachine"

    const-string v60, "queue is empty - leaving"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, -0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_6c
    const-string v59, "WifiStateMachine"

    const-string v60, "add/update network"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    const v61, 0x20034

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/net/wifi/WifiConfiguration;

    const/16 v63, -0x1

    move-object/from16 v0, v62

    move-object/from16 v1, v59

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v59

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    move-object/from16 v3, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_22
    const-string v59, "WifiStateMachine"

    const-string v60, "CMD_MDM_FORGET_NETWORK"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Queue;->isEmpty()Z

    move-result v59

    if-eqz v59, :cond_6d

    const-string v59, "WifiStateMachine"

    const-string v60, "queue is empty - leaving"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, -0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Integer;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v59

    move-object/from16 v0, v60

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v35

    .restart local v35    # "ok":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v61, v0

    if-eqz v35, :cond_6e

    const/16 v59, 0x1

    :goto_11
    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    move/from16 v3, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_6e
    const/16 v59, -0x1

    goto :goto_11

    .end local v35    # "ok":Z
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Landroid/net/wifi/WpsInfo;

    .local v57, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v57

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v59, v0

    packed-switch v59, :pswitch_data_0

    new-instance v58, Landroid/net/wifi/WpsResult;

    sget-object v59, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v58 .. v59}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .local v58, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Invalid setup for WPS"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, -0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v59, v0

    sget-object v60, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    if-ne v0, v1, :cond_6f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x2500b

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .end local v58    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v58

    .restart local v58    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_12

    .end local v58    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v58

    .restart local v58    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_12

    .end local v58    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v58

    .restart local v58    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_12

    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Failed to start WPS with config "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v57 .. v57}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x2500c

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v61

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v57    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v58    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_24
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Network connection established"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_70
    const/16 v36, 0x0

    .local v36, "oldBssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-eqz v59, :cond_71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    :cond_71
    const-string v59, "ENABLE_SAME_SSID_ONLY"

    const-string v60, "ENABLE"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    move/from16 v59, v0

    if-eqz v59, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v59

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14902(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Ljava/lang/String;

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14802(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->isSkipInternetCheck(I)Z

    move-result v59

    if-eqz v59, :cond_79

    const-string v59, "WifiStateMachine"

    const-string v60, "skipInternetCheck true by isSkipInternetCheck()."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    :cond_73
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->containsVsieForSns(I)Z

    move-result v59

    if-eqz v59, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setCheckVsieForSns(Z)V

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v56

    .restart local v56    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v56, :cond_74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    move-object/from16 v0, v56

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    move-object/from16 v0, v56

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setAuthenticated(Z)V

    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiNetworkLists;->putNewNetworkMap(I)V

    if-nez v36, :cond_75

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiNetworkLists;->findNetwork(Ljava/lang/String;)Z

    move-result v59

    if-nez v59, :cond_75

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiNetworkLists;->addNewNetworkList(Ljava/lang/String;)V

    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v56

    if-eqz v56, :cond_76

    move-object/from16 v0, v56

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    move/from16 v59, v0

    if-eqz v59, :cond_76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setSharedAp(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setExpiration(Ljava/lang/String;)V

    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v56

    if-eqz v56, :cond_77

    move-object/from16 v0, v56

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    move/from16 v59, v0

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_77

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v59

    const-string v60, "wifi_hotspot20_connected_history"

    const/16 v61, 0x1

    invoke-static/range {v59 .. v61}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->CSC_PREFERRED_BAND:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$14400()Ljava/lang/String;

    move-result-object v59

    const-string v60, "11AC"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateIconInfo()V
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$29800(Lcom/android/server/wifi/WifiStateMachine;)V

    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    sget-object v60, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .end local v56    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    const/16 v61, 0x0

    invoke-virtual/range {v59 .. v61}, Lcom/android/server/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v59

    if-eqz v59, :cond_7a

    const-string v59, "WifiStateMachine"

    const-string v60, "skipInternetCheck true by SEC21."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    goto/16 :goto_13

    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v60

    const/16 v61, 0x1

    invoke-virtual/range {v59 .. v61}, Lcom/android/server/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v59

    if-eqz v59, :cond_73

    const-string v59, "WifiStateMachine"

    const-string v60, "skipInternetCheck true by SEC80."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    goto/16 :goto_13

    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setCheckVsieForSns(Z)V

    goto/16 :goto_14

    .end local v36    # "oldBssid":Ljava/lang/String;
    :sswitch_25
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_7c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_7c
    const-string v59, "ENABLE_SAME_SSID_ONLY"

    const-string v60, "ENABLE"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    move/from16 v59, v0

    if-eqz v59, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v59

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$30100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, [Landroid/net/wifi/ScanResult;

    check-cast v59, [Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->processPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_1

    :sswitch_27
    const-string v59, "KTT"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v60

    const-string v61, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual/range {v60 .. v61}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_82

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "KT_NOTIFICATION_EVENT err_code="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", aka_noti="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$30200(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    :cond_7e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/16 v60, -0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/16 v60, 0x64

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_7f

    const-string v59, "KTT"

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$13800()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_0

    new-instance v27, Landroid/content/Intent;

    const-string v59, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v27

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v27, "ktIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    .local v28, "kt_msg":I
    const-string v59, "EAP_AKA_NOTIFICATION"

    move-object/from16 v0, v27

    move-object/from16 v1, v59

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v27

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v27    # "ktIntent":Landroid/content/Intent;
    .end local v28    # "kt_msg":I
    :cond_7f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    if-eqz v59, :cond_80

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/16 v60, 0x4

    move/from16 v0, v59

    move/from16 v1, v60

    if-lt v0, v1, :cond_81

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/16 v60, 0x6

    move/from16 v0, v59

    move/from16 v1, v60

    if-gt v0, v1, :cond_81

    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setAuthenticationInformation(Ljava/lang/String;)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$30300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    :cond_81
    new-instance v27, Landroid/content/Intent;

    const-string v59, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v27

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v27    # "ktIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .restart local v28    # "kt_msg":I
    const-string v59, "ERROR_NOTIFICATION"

    move-object/from16 v0, v27

    move-object/from16 v1, v59

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v27

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v27    # "ktIntent":Landroid/content/Intent;
    .end local v28    # "kt_msg":I
    :cond_82
    const/16 v59, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_6
        0x20035 -> :sswitch_7
        0x20036 -> :sswitch_8
        0x20037 -> :sswitch_9
        0x20038 -> :sswitch_c
        0x20039 -> :sswitch_d
        0x2003a -> :sswitch_e
        0x2003b -> :sswitch_f
        0x2003e -> :sswitch_13
        0x20049 -> :sswitch_15
        0x2004a -> :sswitch_16
        0x2004b -> :sswitch_17
        0x20061 -> :sswitch_1b
        0x20062 -> :sswitch_b
        0x20063 -> :sswitch_14
        0x2008e -> :sswitch_18
        0x2008f -> :sswitch_1a
        0x20091 -> :sswitch_19
        0x20092 -> :sswitch_1f
        0x20098 -> :sswitch_1c
        0x2009c -> :sswitch_26
        0x200ce -> :sswitch_22
        0x200cf -> :sswitch_21
        0x2300c -> :sswitch_5
        0x24003 -> :sswitch_24
        0x24004 -> :sswitch_25
        0x24006 -> :sswitch_4
        0x24007 -> :sswitch_2
        0x2400d -> :sswitch_3
        0x2400e -> :sswitch_3
        0x2400f -> :sswitch_10
        0x24010 -> :sswitch_12
        0x2402b -> :sswitch_1
        0x2406f -> :sswitch_27
        0x24074 -> :sswitch_11
        0x24097 -> :sswitch_0
        0x25001 -> :sswitch_1d
        0x25004 -> :sswitch_20
        0x25007 -> :sswitch_1e
        0x2500a -> :sswitch_23
        0x25011 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
