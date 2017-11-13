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
    .line 12224
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

    .line 12228
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->connectScanningService()V

    .line 12230
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 12231
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12233
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 12246
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

    .line 12247
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "reset skipWifiStateBroadcast flag, broadcast wifi state again"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 12248
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 12251
    :cond_0
    return-void

    .line 12235
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

    .line 12236
    .local v0, "isAirplaneMode":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 12238
    const-string v2, "WifiStateMachine"

    const-string v3, "[FCC]Airplane on, setFccChannel(0)!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12239
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0

    .end local v0    # "isAirplaneMode":Z
    :cond_2
    move v0, v1

    .line 12235
    goto :goto_1

    .line 12242
    .restart local v0    # "isAirplaneMode":Z
    :cond_3
    const-string v1, "WifiStateMachine"

    const-string v2, "[FCC]Airplane off, setFccChannel(-1)!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12243
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, -0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 13492
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13493
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/BaseDhcpStateMachine;->doQuit()V

    .line 13495
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 66
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 12262
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

    .line 12264
    const/16 v20, 0x0

    .line 12265
    .local v20, "edmArgs":Landroid/os/Bundle;
    const/16 v39, -0x1

    .line 12267
    .local v39, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    sparse-switch v59, :sswitch_data_0

    .line 13486
    const/16 v59, 0x0

    .line 13488
    :goto_0
    return v59

    .line 12269
    :sswitch_0
    const-string v59, "VZW"

    sget-object v60, Lcom/android/server/wifi/WifiStateMachine;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 12270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFound:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$24400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 12271
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

    .line 12272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x32

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getShowInfoIntent(I)Landroid/content/Intent;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24600(Lcom/android/server/wifi/WifiStateMachine;I)Landroid/content/Intent;

    move-result-object v17

    .line 12273
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

    .line 12274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v17

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 12275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFound:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 12276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFoundCount:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSsidForConnection:Ljava/lang/String;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24702(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 13488
    .end local v17    # "disconnectToastIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    const/16 v59, 0x1

    goto :goto_0

    .line 12283
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 12284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 12285
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 12286
    .local v8, "bssid":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_2

    .line 12288
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    .line 12290
    :cond_2
    if-eqz v8, :cond_3

    .line 12292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$24900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v60

    monitor-enter v60

    .line 12293
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

    .line 12295
    monitor-exit v60
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12297
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

    .line 12295
    :catchall_0
    move-exception v59

    :try_start_1
    monitor-exit v60
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v59

    .line 12300
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

    .line 12301
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v59

    const/16 v60, 0x2

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 12305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v59

    if-nez v59, :cond_5

    .line 12306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x20037

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$25000(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 12307
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

    .line 12316
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 12317
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v30, "Wi-Fi is failed to connect to "

    .line 12318
    .local v30, "logMessage":Ljava/lang/String;
    if-eqz v10, :cond_b

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v59, v0

    if-eqz v59, :cond_b

    .line 12319
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

    .line 12320
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

    .line 12325
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

    .line 12340
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

    .line 12343
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_8

    .line 12344
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

    .line 12346
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setVerifiedPassword(Z)V

    .line 12347
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

    .line 12348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_1

    .line 12327
    :cond_9
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v59, v0

    if-eqz v59, :cond_7

    .line 12328
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v59

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_a

    .line 12329
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

    .line 12330
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

    .line 12332
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

    .line 12333
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

    .line 12338
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

    .line 12353
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "logMessage":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    .line 12354
    .local v49, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const v60, 0x2400d

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_c

    const-string v21, "temp-disabled"

    .line 12356
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

    .line 12358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$24900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v60

    monitor-enter v60

    .line 12359
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

    .line 12361
    monitor-exit v60

    goto/16 :goto_1

    :catchall_1
    move-exception v59

    monitor-exit v60
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v59

    .line 12354
    .end local v21    # "en":Ljava/lang/String;
    :cond_c
    const-string v21, "re-enabled"

    goto/16 :goto_3

    .line 12359
    .restart local v21    # "en":Ljava/lang/String;
    :cond_d
    const/16 v59, 0x0

    goto :goto_4

    .line 12364
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

    .line 12367
    .local v47, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v47 .. v47}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v59

    if-nez v59, :cond_f

    .line 12368
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

    .line 12369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 12371
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Detected an interface down, restart driver"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 12373
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

    .line 12374
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

    .line 12382
    :cond_f
    const-string v59, "ENABLE_SAME_SSID_ONLY"

    const-string v60, "ENABLE"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_11

    .line 12383
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

    .line 12384
    const-string v59, "WifiStateMachine"

    const-string v60, "receive WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT, set mHandoverState false!!"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v59

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    .line 12394
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

    .line 12396
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v59

    if-eqz v59, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 12397
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 12398
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

    .line 12404
    :cond_13
    sget-object v59, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_14

    .line 12405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$25500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v59

    if-eqz v59, :cond_14

    .line 12406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$25500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/IpReachabilityMonitor;->probeAll()V

    .line 12411
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v33

    .line 12413
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

    .line 12416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v56

    .line 12417
    .local v56, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v56, :cond_15

    move-object/from16 v0, v56

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move/from16 v59, v0

    if-nez v59, :cond_15

    .line 12418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->isCaptivePortalException()Z

    move-result v59

    if-eqz v59, :cond_16

    .line 12419
    const/16 v59, 0x0

    move/from16 v0, v59

    move-object/from16 v1, v56

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    .line 12420
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

    .line 12424
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

    .line 12425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 12433
    .end local v56    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_15
    :goto_5
    sget-object v59, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_0

    .line 12434
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/server/wifi/StateChangeResult;

    .line 12435
    .local v48, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v48, :cond_0

    .line 12436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    move/from16 v60, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentAssociateNetworkId:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$25602(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 12427
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

    .line 12441
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

    .line 12442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 12443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 12445
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 12446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 12450
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 12452
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

    .line 12454
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

    .line 12458
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

    .line 12463
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$25800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v10, :cond_19

    .line 12464
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

    .line 12469
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

    .line 12470
    .local v41, "res":I
    if-gez v41, :cond_1b

    .line 12471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12495
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

    .line 12473
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 12474
    .local v12, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v12, :cond_1a

    if-eqz v10, :cond_1a

    .line 12475
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

    .line 12480
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

    .line 12481
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

    .line 12482
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

    .line 12483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 12486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12488
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

    .line 12491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, -0x3

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-virtual/range {v59 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_6

    .line 12498
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v41    # "res":I
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 12499
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

    .line 12501
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

    .line 12504
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

    .line 12508
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

    .line 12511
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

    .line 12512
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

    .line 12516
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

    .line 12517
    .local v35, "ok":Z
    if-nez v35, :cond_1f

    .line 12518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12520
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

    .line 12523
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

    .line 12524
    .local v16, "disableOthers":Z
    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 12525
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

    .line 12526
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_22

    .line 12527
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

    .line 12528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12529
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

    .line 12523
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "disableOthers":Z
    .end local v32    # "netId":I
    :cond_21
    const/16 v16, 0x0

    goto :goto_8

    .line 12535
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "disableOthers":Z
    .restart local v32    # "netId":I
    :cond_22
    if-eqz v16, :cond_24

    .line 12536
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

    .line 12540
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

    .line 12541
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

    .line 12544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12546
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

    .line 12548
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

    .line 12549
    new-instance v26, Landroid/content/Intent;

    const-string v59, "android.net.wifi.REMOVE_BLACKLIST"

    move-object/from16 v0, v26

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12550
    .local v26, "intent":Landroid/content/Intent;
    const-string v59, "netId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v26

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 12555
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

    .line 12557
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    .line 12558
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

    .line 12559
    .restart local v35    # "ok":Z
    if-nez v35, :cond_25

    .line 12560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12563
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

    .line 12567
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

    .line 12568
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_27

    .line 12569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks(Z)V

    goto/16 :goto_1

    .line 12571
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

    .line 12583
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

    .line 12585
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

    .line 12587
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12588
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

    .line 12593
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

    .line 12594
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_0

    .line 12595
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

    .line 12597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x20049

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 12602
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    if-nez v59, :cond_29

    .line 12603
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

    .line 12605
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

    .line 12608
    :sswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    if-nez v59, :cond_2a

    .line 12609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    goto/16 :goto_1

    .line 12611
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->clearSBlacklist()Z

    goto/16 :goto_1

    .line 12614
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v35

    .line 12616
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

    .line 12617
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

    .line 12620
    const-string v59, "backup"

    invoke-static/range {v59 .. v59}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v22

    .line 12622
    .local v22, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v22, :cond_0

    .line 12624
    :try_start_3
    const-string v59, "com.android.providers.settings"

    move-object/from16 v0, v22

    move-object/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 12625
    :catch_0
    move-exception v59

    goto/16 :goto_1

    .line 12617
    .end local v22    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_2c
    const/16 v59, -0x1

    goto :goto_a

    .line 12631
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

    .line 12635
    :sswitch_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    .line 12636
    .restart local v33    # "networkId":I
    const/16 v24, 0x0

    .line 12637
    .local v24, "identitySent":Z
    const/16 v19, -0x1

    .line 12639
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

    .line 12641
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

    .line 12645
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

    .line 12652
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

    .line 12654
    .local v50, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v50, :cond_30

    .line 12655
    invoke-virtual/range {v50 .. v50}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v25

    .line 12656
    .local v25, "imsi":Ljava/lang/String;
    const-string v31, ""

    .line 12658
    .local v31, "mccMnc":Ljava/lang/String;
    invoke-virtual/range {v50 .. v50}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v59

    const/16 v60, 0x5

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_2f

    .line 12659
    invoke-virtual/range {v50 .. v50}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v31

    .line 12661
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

    .line 12663
    .local v23, "identity":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v59

    if-nez v59, :cond_30

    .line 12664
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

    .line 12665
    const/16 v24, 0x1

    .line 12669
    .end local v23    # "identity":Ljava/lang/String;
    .end local v25    # "imsi":Ljava/lang/String;
    .end local v31    # "mccMnc":Ljava/lang/String;
    .end local v50    # "tm":Landroid/telephony/TelephonyManager;
    :cond_30
    if-nez v24, :cond_0

    .line 12671
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/lang/String;

    .line 12672
    .local v46, "ssid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v59, v0

    if-ltz v59, :cond_31

    .line 12673
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

    .line 12675
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

    .line 12678
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

    .line 12685
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

    .line 12692
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

    .line 12699
    .end local v19    # "eapMethod":I
    .end local v24    # "identitySent":Z
    .end local v33    # "networkId":I
    .end local v46    # "ssid":Ljava/lang/String;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/lang/String;

    .line 12701
    .restart local v46    # "ssid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v59, v0

    if-ltz v59, :cond_33

    .line 12702
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

    .line 12704
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

    .line 12707
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

    .line 12713
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

    .line 12720
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

    .line 12725
    .end local v46    # "ssid":Ljava/lang/String;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Received SUP_REQUEST_SIM_AUTH"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12726
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 12727
    .local v40, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v40, :cond_37

    .line 12728
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v59, v0

    const/16 v60, 0x4

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_35

    .line 12729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 12730
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

    .line 12732
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 12735
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Invalid sim auth request"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12739
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

    .line 12743
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

    .line 12748
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, -0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 12750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 12754
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 12757
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 12761
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

    .line 12762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Reconnecting to give a chance to un-connected TLS networks"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 12764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 12769
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12770
    const/16 v59, 0x1

    goto/16 :goto_0

    .line 12780
    :sswitch_1a
    const/4 v15, 0x0

    .line 12781
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

    .line 12785
    const/4 v15, 0x1

    .line 12786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 12790
    :cond_38
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 12791
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 12792
    .restart local v32    # "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v43, v0

    .line 12793
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

    .line 12798
    if-nez v10, :cond_39

    .line 12799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12804
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

    .line 12807
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

    .line 12809
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

    .line 12810
    .local v42, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v32

    .line 12811
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

    .line 12815
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

    .line 12816
    if-nez v10, :cond_3a

    .line 12817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12820
    :cond_3a
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v59, v0

    move/from16 v0, v32

    move/from16 v1, v59

    if-eq v0, v1, :cond_3b

    .line 12821
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

    .line 12826
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

    .line 12828
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

    .line 12830
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

    .line 12836
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

    .line 12840
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

    .line 12843
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

    .line 12845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12846
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

    .line 12847
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

    .line 12848
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

    .line 12862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, -0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 12865
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move/from16 v1, v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$26702(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12866
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

    .line 12867
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

    .line 12840
    .end local v29    # "lastConnectUid":I
    :cond_3f
    const/16 v29, -0x1

    goto/16 :goto_b

    .line 12868
    .restart local v29    # "lastConnectUid":I
    :cond_40
    if-eqz v15, :cond_41

    .line 12869
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

    .line 12872
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

    .line 12873
    const v13, 0xea60

    .line 12874
    .local v13, "delay":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2000()Z

    move-result v59

    if-eqz v59, :cond_42

    .line 12875
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

    .line 12877
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

    .line 12881
    .end local v13    # "delay":I
    :cond_43
    sget v59, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v59, v59, 0x1

    sput v59, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    goto/16 :goto_1

    .line 12884
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

    .line 12885
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

    .line 12891
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

    .line 12894
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

    .line 12903
    :sswitch_1d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 12904
    .restart local v32    # "netId":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 12905
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

    .line 12907
    const-string v59, "VZW"

    sget-object v60, Lcom/android/server/wifi/WifiStateMachine;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_45

    .line 12908
    if-eqz v10, :cond_45

    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v59, v0

    if-eqz v59, :cond_45

    .line 12909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFound:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 12910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkNotFoundCount:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSsidForConnection:Ljava/lang/String;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$24702(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 12954
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSccForecedConn:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$27502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 12956
    const/16 v53, 0x0

    .line 12959
    .local v53, "updatedExisting":Z
    if-eqz v10, :cond_4a

    .line 12964
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

    .line 12966
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

    .line 12970
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

    .line 12975
    :cond_46
    const/16 v59, 0x1

    move/from16 v0, v59

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v11

    .line 12976
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

    .line 12978
    .local v44, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v44, :cond_47

    .line 12982
    move-object/from16 v10, v44

    .line 12983
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

    .line 12985
    const/16 v59, 0x0

    move/from16 v0, v59

    iput-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 12986
    const/16 v59, 0x0

    move/from16 v0, v59

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 12987
    const/16 v53, 0x1

    .line 12991
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$25800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v10, :cond_48

    .line 12992
    const-string v59, "WifiStateMachine"

    const-string v60, "network not allowed"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12993
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

    .line 12997
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

    .line 12998
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

    .line 12999
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

    .line 13004
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

    .line 13005
    .restart local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v32

    .line 13007
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

    .line 13009
    if-nez v10, :cond_4b

    .line 13010
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

    .line 13013
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

    .line 13017
    :cond_4b
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v59, v0

    if-eqz v59, :cond_4c

    const-string v55, " skipped"

    .line 13018
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

    .line 13027
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

    .line 13028
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v45

    .line 13029
    .local v45, "simState":I
    const/16 v59, 0x1

    move/from16 v0, v45

    move/from16 v1, v59

    if-ne v0, v1, :cond_4d

    .line 13030
    const-string v59, "WifiStateMachine"

    const-string v60, "trying to connect without SIM, show alert dialog for VZW"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13031
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

    .line 13040
    .local v14, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v59

    const/16 v60, 0x7d8

    invoke-virtual/range {v59 .. v60}, Landroid/view/Window;->setType(I)V

    .line 13041
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 13017
    .end local v14    # "dialog":Landroid/app/AlertDialog;
    .end local v45    # "simState":I
    .end local v55    # "wasSkipped":Ljava/lang/String;
    :cond_4c
    const-string v55, ""

    goto/16 :goto_c

    .line 13046
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

    .line 13047
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v45

    .line 13048
    .restart local v45    # "simState":I
    const/16 v59, 0x1

    move/from16 v0, v45

    move/from16 v1, v59

    if-ne v0, v1, :cond_4e

    .line 13049
    const-string v59, "WifiStateMachine"

    const-string v60, "trying to connect without SIM, show alert dialog for SKT"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13050
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

    .line 13058
    .restart local v14    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v59

    const/16 v60, 0x7d8

    invoke-virtual/range {v59 .. v60}, Landroid/view/Window;->setType(I)V

    .line 13059
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 13064
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

    .line 13066
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

    .line 13074
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "CONNECT_NETWORK"

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 13077
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

    .line 13078
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

    .line 13081
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

    .line 13083
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

    .line 13088
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26702(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 13091
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

    .line 13092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move/from16 v1, v32

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAllowedNetId:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$27902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 13093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCanConnectNow:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 13097
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

    .line 13099
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

    .line 13100
    new-instance v26, Landroid/content/Intent;

    const-string v59, "android.net.wifi.REMOVE_BLACKLIST"

    move-object/from16 v0, v26

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13101
    .restart local v26    # "intent":Landroid/content/Intent;
    const-string v59, "netId"

    move-object/from16 v0, v26

    move-object/from16 v1, v59

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v26

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 13106
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

    .line 13108
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

    .line 13110
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

    .line 13111
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

    .line 13113
    const/4 v15, 0x0

    .line 13114
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

    .line 13119
    const/4 v15, 0x1

    .line 13120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 13124
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

    .line 13126
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

    .line 13128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v59 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 13129
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

    .line 13132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v59

    const v60, 0x25001

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 13133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25003

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 13134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x20037

    const-wide/16 v62, 0x2710

    move-object/from16 v0, v59

    move/from16 v1, v60

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    .line 13135
    if-eqz v15, :cond_58

    .line 13137
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

    .line 13138
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

    .line 13142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$28400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 13148
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

    .line 13151
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

    .line 13152
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

    .line 13158
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

    .line 13161
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28602(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 13162
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 13163
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_5b

    .line 13164
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

    .line 13167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 13168
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

    .line 13172
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    new-instance v60, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v60

    invoke-direct {v0, v10}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28602(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 13173
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v34, v0

    .line 13174
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

    .line 13181
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const v60, 0x25007

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_5c

    const/4 v9, 0x1

    .line 13182
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

    .line 13184
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

    .line 13188
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

    .line 13181
    .end local v9    # "checkUid":Z
    :cond_5c
    const/4 v9, 0x0

    goto :goto_d

    .line 13194
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

    .line 13195
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

    .line 13201
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

    .line 13202
    .restart local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v59

    const/16 v60, -0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_64

    .line 13203
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

    .line 13204
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v59

    if-eqz v59, :cond_5f

    .line 13208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Reconfiguring IP on connection"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13211
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

    .line 13213
    :cond_5f
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v59

    if-eqz v59, :cond_60

    .line 13214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Reconfiguring proxy on connection"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$7900(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 13218
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

    .line 13219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v1, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$29200(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    .line 13221
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2000()Z

    move-result v59

    if-eqz v59, :cond_61

    .line 13222
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

    .line 13226
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$24900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v60

    monitor-enter v60

    .line 13232
    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const v61, 0x25007

    move/from16 v0, v59

    move/from16 v1, v61

    if-ne v0, v1, :cond_63

    const/16 v54, 0x1

    .line 13235
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

    .line 13238
    .local v38, "persistConnect":Z
    if-eqz v54, :cond_62

    .line 13239
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

    .line 13240
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

    .line 13243
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

    .line 13245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 13246
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

    .line 13232
    :cond_63
    const/16 v54, 0x0

    goto :goto_e

    .line 13248
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Failed to save network"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 13249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 13250
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

    .line 13256
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

    .line 13258
    .local v51, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v51, :cond_65

    .line 13259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 13264
    :goto_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 13266
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

    .line 13268
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

    .line 13271
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

    .line 13261
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

    .line 13277
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

    .line 13278
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

    .line 13285
    :cond_67
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v59

    const-string v60, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v59 .. v60}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v59

    if-eqz v59, :cond_6a

    .line 13286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    .line 13287
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

    .line 13288
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

    .line 13289
    :cond_69
    const-string v59, "WifiStateMachine"

    const-string v60, "starting WIFI aggregation logoff thread "

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13290
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

    .line 13291
    .local v6, "Logoff":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 13293
    const-wide/16 v60, 0x7d0

    :try_start_5
    move-wide/from16 v0, v60

    invoke-virtual {v6, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 13303
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

    .line 13304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x25006

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 13305
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

    .line 13294
    .restart local v6    # "Logoff":Ljava/lang/Thread;
    .restart local v7    # "SSID":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 13296
    .local v18, "e":Ljava/lang/InterruptedException;
    const-string v59, "WifiStateMachine"

    const-string v60, "interrupt in WIFI aggregation logoff thread -"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13297
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10

    .line 13308
    .end local v6    # "Logoff":Ljava/lang/Thread;
    .end local v7    # "SSID":Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Failed to forget network"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 13309
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

    .line 13315
    .end local v32    # "netId":I
    .end local v51    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_21
    const-string v59, "WifiStateMachine"

    const-string v60, "CMD_MDM_SAVE_NETWORK"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Queue;->isEmpty()Z

    move-result v59

    if-eqz v59, :cond_6c

    .line 13317
    const-string v59, "WifiStateMachine"

    const-string v60, "queue is empty - leaving"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13318
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

    .line 13320
    :cond_6c
    const-string v59, "WifiStateMachine"

    const-string v60, "add/update network"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13321
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

    .line 13326
    :sswitch_22
    const-string v59, "WifiStateMachine"

    const-string v60, "CMD_MDM_FORGET_NETWORK"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Queue;->isEmpty()Z

    move-result v59

    if-eqz v59, :cond_6d

    .line 13328
    const-string v59, "WifiStateMachine"

    const-string v60, "queue is empty - leaving"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13329
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

    .line 13331
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

    .line 13332
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

    .line 13336
    .end local v35    # "ok":Z
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Landroid/net/wifi/WpsInfo;

    .line 13338
    .local v57, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v57

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v59, v0

    packed-switch v59, :pswitch_data_0

    .line 13349
    new-instance v58, Landroid/net/wifi/WpsResult;

    sget-object v59, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v58 .. v59}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 13350
    .local v58, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const-string v60, "Invalid setup for WPS"

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 13353
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    const/16 v60, -0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 13355
    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v59, v0

    sget-object v60, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    if-ne v0, v1, :cond_6f

    .line 13356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 13357
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

    .line 13358
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

    .line 13340
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

    .line 13341
    .restart local v58    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_12

    .line 13343
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

    .line 13344
    .restart local v58    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_12

    .line 13346
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

    .line 13347
    .restart local v58    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_12

    .line 13360
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

    .line 13361
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

    .line 13365
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

    .line 13366
    :cond_70
    const/16 v36, 0x0

    .line 13367
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

    .line 13368
    :cond_71
    const-string v59, "ENABLE_SAME_SSID_ONLY"

    const-string v60, "ENABLE"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_72

    .line 13369
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

    .line 13371
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 13372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v36

    .line 13373
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

    .line 13375
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

    .line 13376
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

    .line 13378
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

    .line 13379
    const-string v59, "WifiStateMachine"

    const-string v60, "skipInternetCheck true by isSkipInternetCheck()."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 13390
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

    .line 13391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setCheckVsieForSns(Z)V

    .line 13397
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

    .line 13398
    .restart local v56    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v56, :cond_74

    .line 13399
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

    .line 13400
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

    .line 13405
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

    .line 13406
    if-nez v36, :cond_75

    .line 13407
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

    .line 13408
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

    .line 13414
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

    .line 13415
    if-eqz v56, :cond_76

    move-object/from16 v0, v56

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    move/from16 v59, v0

    if-eqz v59, :cond_76

    .line 13416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setSharedAp(Z)V

    .line 13417
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

    .line 13421
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

    .line 13422
    if-eqz v56, :cond_77

    move-object/from16 v0, v56

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    move/from16 v59, v0

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_77

    .line 13423
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

    .line 13427
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

    .line 13429
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->CSC_PREFERRED_BAND:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$14400()Ljava/lang/String;

    move-result-object v59

    const-string v60, "11AC"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_78

    .line 13430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateIconInfo()V
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$29800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 13434
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    sget-object v60, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static/range {v59 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 13435
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

    .line 13436
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

    .line 13381
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

    .line 13382
    const-string v59, "WifiStateMachine"

    const-string v60, "skipInternetCheck true by SEC21."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    goto/16 :goto_13

    .line 13384
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

    .line 13385
    const-string v59, "WifiStateMachine"

    const-string v60, "skipInternetCheck true by SEC80."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    goto/16 :goto_13

    .line 13393
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

    .line 13448
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

    .line 13450
    :cond_7c
    const-string v59, "ENABLE_SAME_SSID_ONLY"

    const-string v60, "ENABLE"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_7d

    .line 13451
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

    .line 13453
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 13454
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

    .line 13457
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

    .line 13460
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

    .line 13461
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

    .line 13463
    :cond_7e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/16 v60, -0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_0

    .line 13465
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/16 v60, 0x64

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_7f

    .line 13466
    const-string v59, "KTT"

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$13800()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 13467
    new-instance v27, Landroid/content/Intent;

    const-string v59, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v27

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13468
    .local v27, "ktIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    .line 13469
    .local v28, "kt_msg":I
    const-string v59, "EAP_AKA_NOTIFICATION"

    move-object/from16 v0, v27

    move-object/from16 v1, v59

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v27

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 13473
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

    .line 13474
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

    .line 13476
    :cond_81
    new-instance v27, Landroid/content/Intent;

    const-string v59, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v27

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13477
    .restart local v27    # "ktIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 13478
    .restart local v28    # "kt_msg":I
    const-string v59, "ERROR_NOTIFICATION"

    move-object/from16 v0, v27

    move-object/from16 v1, v59

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v27

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 13483
    .end local v27    # "ktIntent":Landroid/content/Intent;
    .end local v28    # "kt_msg":I
    :cond_82
    const/16 v59, 0x0

    goto/16 :goto_0

    .line 12267
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

    .line 13338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
