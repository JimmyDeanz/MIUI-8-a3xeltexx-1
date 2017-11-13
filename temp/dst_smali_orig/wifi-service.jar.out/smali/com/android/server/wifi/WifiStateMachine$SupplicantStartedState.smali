.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .local v0, "defaultInterval":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_supplicant_scan_interval_ms"

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$16302(Lcom/android/server/wifi/WifiStateMachine;J)J

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFirmwareType:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16300(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->setExternalSim(Z)Z

    invoke-static {v6}, Lcom/android/server/wifi/WifiNative;->setDfsFlag(Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNeedToUpdateChannelList:Z
    invoke-static {v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$16502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->initializeCountryCode()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$16600(Lcom/android/server/wifi/WifiStateMachine;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setRandomMacOui()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$16700(Lcom/android/server/wifi/WifiStateMachine;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUnstableAps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$16800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0xc8

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v11, p1, v12}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v8

    :sswitch_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$16900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    :sswitch_2
    move v8, v9

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :sswitch_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Connection lost, restart supplicant"

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$17200(Lcom/android/server/wifi/WifiStateMachine;Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$14700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v8

    const v10, 0x2006f

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$16900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :goto_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v10, 0x2000b

    const-wide/16 v12, 0x1388

    invoke-virtual {v8, v10, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$10800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    :sswitch_4
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17500(Lcom/android/server/wifi/WifiStateMachine;)V

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanResults()V
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17600(Lcom/android/server/wifi/WifiStateMachine;)V

    iget v10, p1, Landroid/os/Message;->what:I

    const v11, 0x24005

    if-ne v10, v11, :cond_4

    move v4, v9

    .local v4, "scanSucceeded":Z
    :goto_3
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v10, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z
    invoke-static {v10, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$17702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z
    invoke-static {v10, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$17802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z
    invoke-static {v10, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$17902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$18000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$18000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    invoke-virtual {v10, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->checkAndEnableUnstableAps()V

    goto/16 :goto_1

    .end local v4    # "scanSucceeded":Z
    :cond_4
    move v4, v8

    goto :goto_3

    :sswitch_5
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendActionFrameVSWESReceivedBroadcast(Ljava/lang/String;)V
    invoke-static {v10, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$18100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->ping()Z

    move-result v2

    .local v2, "ok":Z
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v12, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_5

    move v8, v9

    :goto_4
    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v11, p1, v12, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_5
    move v8, v10

    goto :goto_4

    .end local v2    # "ok":Z
    :sswitch_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->getFreqCapability()Ljava/lang/String;

    move-result-object v1

    .local v1, "freqs":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v10, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v8, p1, v10, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .end local v1    # "freqs":Ljava/lang/String;
    :sswitch_8
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v11, "Failed to start soft AP with a running supplicant"

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v11, 0xe

    invoke-virtual {v10, v11, v8}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V

    goto/16 :goto_1

    :sswitch_9
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v11, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v8, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$12702(Lcom/android/server/wifi/WifiStateMachine;I)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_1

    :sswitch_a
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v8

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v11}, Lcom/android/server/wifi/WifiNetworkLists;->removeNetworkMap(I)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v11, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v8, p1, v11, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_b
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_0

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v10, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$18302(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_c
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigStore;->enableDisabledPoorNetwork()V

    goto/16 :goto_1

    :sswitch_d
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    const/16 v10, 0x1b

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v10, v11}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    goto/16 :goto_1

    :sswitch_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v10, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v8, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    .local v6, "ssid":Ljava/lang/String;
    :goto_5
    if-eqz v6, :cond_9

    const-string v8, "\"VerizonWiFiAccess\""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->showVzwEapAkaSimRemovedDialog()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$18400(Lcom/android/server/wifi/WifiStateMachine;)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    .end local v6    # "ssid":Ljava/lang/String;
    :cond_6
    :goto_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    const/16 v10, 0x1c

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v10, v11}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .restart local v6    # "ssid":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    const/16 v10, 0xc9

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    goto :goto_6

    :cond_9
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    goto :goto_6

    .end local v6    # "ssid":Ljava/lang/String;
    :sswitch_f
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v7

    .local v7, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-nez v7, :cond_a

    new-instance v7, Landroid/net/wifi/WifiLinkLayerStats;

    .end local v7    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-direct {v7}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    .restart local v7    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_a
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v10, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v8, p1, v10, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .end local v7    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, "country":Ljava/lang/String;
    iget v10, p1, Landroid/os/Message;->arg2:I

    if-ne v10, v9, :cond_b

    move v3, v9

    .local v3, "persist":Z
    :goto_7
    iget v5, p1, Landroid/os/Message;->arg1:I

    .local v5, "sequence":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v5, v8, :cond_c

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "set country code ignored due to sequnce num"

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v3    # "persist":Z
    .end local v5    # "sequence":I
    :cond_b
    move v3, v8

    goto :goto_7

    .restart local v3    # "persist":Z
    .restart local v5    # "sequence":I
    :cond_c
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set country code "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v0, :cond_f

    const-string v8, "(null)"

    :goto_8
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_d
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$16400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNeedToUpdateChannelList:Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$16502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    :goto_9
    if-eqz v3, :cond_e

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_country_code"

    if-nez v0, :cond_12

    const-string v8, ""

    :goto_a
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    const v10, 0x23010

    invoke-virtual {v8, v10, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_f
    move-object v8, v0

    goto :goto_8

    :cond_10
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set country code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    const-string v8, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ignore set country code : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$16400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_12
    move-object v8, v0

    goto :goto_a

    .end local v0    # "country":Ljava/lang/String;
    .end local v3    # "persist":Z
    .end local v5    # "sequence":I
    :sswitch_11
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static {v8, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    :sswitch_12
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->clearHandoverBlacklistNative()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    :sswitch_13
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    const/16 v10, 0xd2

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v10, v11}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    goto/16 :goto_1

    :sswitch_14
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_1
        0x20015 -> :sswitch_8
        0x20033 -> :sswitch_6
        0x20035 -> :sswitch_a
        0x2003c -> :sswitch_7
        0x2003f -> :sswitch_f
        0x20048 -> :sswitch_9
        0x20050 -> :sswitch_10
        0x20085 -> :sswitch_0
        0x2008d -> :sswitch_b
        0x200cb -> :sswitch_11
        0x200cc -> :sswitch_12
        0x200d0 -> :sswitch_13
        0x200d1 -> :sswitch_14
        0x20135 -> :sswitch_d
        0x20140 -> :sswitch_e
        0x20258 -> :sswitch_0
        0x20259 -> :sswitch_0
        0x2025a -> :sswitch_2
        0x2025d -> :sswitch_0
        0x2025e -> :sswitch_0
        0x21017 -> :sswitch_c
        0x24002 -> :sswitch_3
        0x24005 -> :sswitch_4
        0x24011 -> :sswitch_4
        0x24065 -> :sswitch_5
    .end sparse-switch
.end method
