.class Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$30808(Lcom/android/server/wifi/WifiStateMachine;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20053

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$30800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "Have NetworkAgent when entering L2Connected"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$30900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "WifiNetworkAgent"

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v7

    const/16 v8, 0x3c

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v9, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8302(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "L2ConnectedState"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$25500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$25500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpReachabilityMonitor;->stop()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$25502(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/IpReachabilityMonitor;)Landroid/net/IpReachabilityMonitor;

    :cond_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaving L2ConnectedState state nid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$30500(Lcom/android/server/wifi/WifiStateMachine;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    :cond_3
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->CSC_PREFERRED_BAND:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$14400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "11AC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-boolean v3, v1, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-boolean v3, v1, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    :cond_4
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 28
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "DHCP successful"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingRenew:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31102(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/DhcpResults;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Success(Landroid/net/DhcpResults;I)V
    invoke-static {v3, v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$31200(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "complete"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getAutomaticConnectionToWifi()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCanConnectNow:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$28000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAllowedNetId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCanConnectNow:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, -0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAllowedNetId:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27902(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v9, -0x1

    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_4

    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHCP failure count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "count":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "complete"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingRenew:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Maintain Current connection if DHCP failed by Roaming RENEW"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingRenew:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31102(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "start"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    const v3, 0x30002

    invoke-virtual {v2, v3}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    const v3, 0x30001

    invoke-virtual {v2, v3}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingRenew:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31102(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Failure(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31600(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedOxygenState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    if-ne v2, v3, :cond_8

    :cond_7
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "DHCP renew post action!!! - Don\'t need to make state transition"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "WifiStateMachine"

    const-string v3, "Not connected state, yet."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$32000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForUserSelectionState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$32100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$32200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$32300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleIpConfigurationLost()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$32400(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$32500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :sswitch_4
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleIpReachabilityLost()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$32600(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$32700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$32800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$32900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20049

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$33000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->noteWifiDisabledWhileAssociated()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16000()I

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$33100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    :sswitch_9
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_START_SCAN source "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " txSuccessRate="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " rxSuccessRate="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " targetRoamBSSID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " RSSI="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$27100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    .local v4, "shouldScan":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkAndRestartDelayedScan(IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    invoke-static/range {v2 .. v7}, Lcom/android/server/wifi/WifiStateMachine;->access$33200(Lcom/android/server/wifi/WifiStateMachine;IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OBSOLETE:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$33300()I

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L2Connected CMD_START_SCAN source "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> obsolete"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L2Connected CMD_START_SCAN source "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ignore because P2P is connected"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_f
    const/16 v24, 0x0

    .local v24, "tryFullBandScan":Z
    const/16 v20, 0x0

    .local v20, "restrictChannelList":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .local v16, "now_ms":J
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_START_SCAN with age="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$33400(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    sub-long v6, v16, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " interval="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$33500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " maxinterval="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v6, 0x493e0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$33400(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    sub-long v2, v16, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$33500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_12

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_START_SCAN try full band scan age="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$33400(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    sub-long v6, v16, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " interval="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$33500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " maxinterval="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v6, 0x493e0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_11
    const/16 v24, 0x1

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    int-to-double v6, v5

    cmpl-double v2, v2, v6

    if-gtz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    int-to-double v6, v5

    cmpl-double v2, v2, v6

    if-lez v2, :cond_15

    :cond_13
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "CMD_START_SCAN prevent full band scan due to pkt rate"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_14
    const/16 v24, 0x0

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    int-to-double v6, v5

    cmpl-double v2, v2, v6

    if-gtz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    int-to-double v6, v5

    cmpl-double v2, v2, v6

    if-lez v2, :cond_18

    :cond_16
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_18

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_START_SCAN source "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ...and ignore scans"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " tx="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " rx="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$33600()I

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .local v11, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_START_SCAN full="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_19
    if-eqz v11, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$33500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    int-to-long v6, v5

    cmp-long v2, v2, v6

    if-gez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v6, v3

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$33502(Lcom/android/server/wifi/WifiStateMachine;J)J

    :cond_1a
    if-eqz v24, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-wide/from16 v0, v16

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J
    invoke-static {v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$33402(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$33500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    int-to-long v6, v5

    cmp-long v2, v2, v6

    if-gez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$33500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v26, v0

    mul-long v6, v6, v26

    const-wide/16 v26, 0x8

    div-long v6, v6, v26

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$33502(Lcom/android/server/wifi/WifiStateMachine;J)J

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_START_SCAN bump interval ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$33500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$21700(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move/from16 v0, v20

    invoke-virtual {v2, v11, v0}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "starting scan,  did not find channels -> full"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-wide/from16 v0, v16

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J
    invoke-static {v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$33402(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$33500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    int-to-long v6, v5

    cmp-long v2, v2, v6

    if-gez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$33500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v26, v0

    mul-long v6, v6, v26

    const-wide/16 v26, 0x8

    div-long v6, v6, v26

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$33502(Lcom/android/server/wifi/WifiStateMachine;J)J

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_START_SCAN bump interval ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$33500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$21700(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "CMD_START_SCAN : connected mode and no configuration"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$33700()I

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .end local v4    # "shouldScan":Z
    .end local v11    # "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "now_ms":J
    .end local v20    # "restrictChannelList":Z
    .end local v24    # "tryFullBandScan":Z
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_0

    :sswitch_a
    const/4 v15, -0x1

    .local v15, "netId":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_21

    iget v15, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-eq v2, v15, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    goto :goto_2

    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "netId":I
    :sswitch_b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Network reconnected established_roaming"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->monitorNetworkPropertiesUpdate()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$33800(Lcom/android/server/wifi/WifiStateMachine;)V

    const/16 v18, 0x0

    .local v18, "oldBssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v19

    .local v19, "oldNetworkId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14902(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14802(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->isSkipInternetCheck(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "WifiStateMachine"

    const-string v3, "skipInternetCheck true by isSkipInternetCheck()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    :cond_23
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->containsVsieForSns(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setCheckVsieForSns(Z)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v25

    .local v25, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v25, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    move-object/from16 v0, v25

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$29700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->CSC_PREFERRED_BAND:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$14400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "11AC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateIconInfo()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29800(Lcom/android/server/wifi/WifiStateMachine;)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getDhcpRenewAfterRoamingMode()I

    move-result v23

    .local v23, "tmpDhcpRenewAfterRoamingMode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Static ip - skip renew"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    const/16 v23, -0x1

    :cond_26
    if-eqz v23, :cond_27

    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_29

    :cond_27
    if-eqz v18, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    if-nez v23, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wifi/WifiNetworkLists;->findIpLeasedBefore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    if-eqz v2, :cond_2d

    :cond_28
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP is leased in this network: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", skip DHCP [mHandoverState : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v5, v5, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_29
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->monitorNetworkPropertiesUpdate()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$33800(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v25

    if-eqz v25, :cond_0

    move-object/from16 v0, v25

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setSharedAp(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setExpiration(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v23    # "tmpDhcpRenewAfterRoamingMode":I
    .end local v25    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "WifiStateMachine"

    const-string v3, "skipInternetCheck true by SEC21."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    goto/16 :goto_3

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "WifiStateMachine"

    const-string v3, "skipInternetCheck true by SEC80."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    goto/16 :goto_3

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setCheckVsieForSns(Z)V

    goto/16 :goto_4

    .restart local v23    # "tmpDhcpRenewAfterRoamingMode":I
    .restart local v25    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v21

    .local v21, "ssid":Ljava/lang/String;
    if-eqz v21, :cond_30

    const-string v2, "ollehWiFi"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "olleh GiGA WiFi"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "T wifi zone"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "0001docomo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2e
    const/4 v13, 0x0

    .local v13, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v13

    if-eqz v13, :cond_2f

    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v13, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v13}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Clearing prev IP address"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2f
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingRenew:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31102(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "start"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    const v3, 0x30002

    invoke-virtual {v2, v3}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    const v3, 0x30001

    invoke-virtual {v2, v3}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_5

    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error configuring interface "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_6

    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingRenew:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-nez v2, :cond_32

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "IP is not in this network , Start RENEW"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingRenew:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31102(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "start"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    const v3, 0x30003

    invoke-virtual {v2, v3}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_5

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingRenew:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "IP is not in this network , but stop and start"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingRenew:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31102(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    const v3, 0x30002

    invoke-virtual {v2, v3}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    const v3, 0x30001

    invoke-virtual {v2, v3}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_5

    :cond_34
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "roaming ! but wait timeout or response"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v21    # "ssid":Ljava/lang/String;
    :cond_35
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " are same, skip DHCP"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v18    # "oldBssid":Ljava/lang/String;
    .end local v19    # "oldNetworkId":I
    .end local v23    # "tmpDhcpRenewAfterRoamingMode":I
    .end local v25    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$30800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_39

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VVDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$33900()Z

    move-result v2

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get link layer stats "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$34000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2000()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v22

    .local v22, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v22, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v3, -0x7f

    if-eq v2, v3, :cond_38

    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/wifi/WifiLinkLayerStats;->rssi_mgmt:I

    if-eqz v2, :cond_37

    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    if-nez v2, :cond_38

    :cond_37
    const/16 v22, 0x0

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->calculateWifiScore(Landroid/net/wifi/WifiLinkLayerStats;)V
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$34200(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiLinkLayerStats;)V

    .end local v22    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x20053

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$30800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$34300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->cleanWifiScore()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$34400(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3a

    const/4 v2, 0x1

    :goto_7
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$30808(Lcom/android/server/wifi/WifiStateMachine;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x20053

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$30800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$34300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    :cond_3a
    const/4 v2, 0x0

    goto :goto_7

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto :goto_8

    :sswitch_e
    new-instance v14, Landroid/net/wifi/RssiPacketCountInfo;

    invoke-direct {v14}, Landroid/net/wifi/RssiPacketCountInfo;-><init>()V

    .local v14, "info":Landroid/net/wifi/RssiPacketCountInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v14, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    invoke-static {v2, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$34500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x25015

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v2, v0, v3, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .end local v14    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    :sswitch_f
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "WifiStateMachine"

    const-string v3, "REQUEST_POWER_SAVE_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    goto/16 :goto_1

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$20600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string v2, "WifiStateMachine"

    const-string v3, "REQUEST_POWER_SAVE_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    goto/16 :goto_1

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$25300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    if-eqz v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_DELAYED_NETWORK_DISCONNECT and not debouncing - ignore "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_DELAYED_NETWORK_DISCONNECT and debouncing - disconnect "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$25302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$34600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    :sswitch_12
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Associated command w/o BSSID"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$34700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$34800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$34800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_41

    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "NOT update Last BSSID"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14802(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_13
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    int-to-byte v10, v2

    .local v10, "currRssi":B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v10, v3}, Lcom/android/server/wifi/WifiStateMachine;->processRssiThreshold(BI)V

    goto/16 :goto_1

    .end local v10    # "currRssi":B
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->stopRssiMonitoringOffload()I

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_7
        0x20049 -> :sswitch_5
        0x20050 -> :sswitch_8
        0x20052 -> :sswitch_d
        0x20053 -> :sswitch_c
        0x20057 -> :sswitch_11
        0x2008a -> :sswitch_2
        0x2008b -> :sswitch_3
        0x20093 -> :sswitch_12
        0x20095 -> :sswitch_4
        0x200a2 -> :sswitch_13
        0x200a3 -> :sswitch_14
        0x200a4 -> :sswitch_13
        0x21013 -> :sswitch_f
        0x21014 -> :sswitch_10
        0x2300c -> :sswitch_6
        0x24003 -> :sswitch_b
        0x25001 -> :sswitch_a
        0x25014 -> :sswitch_e
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_1
    .end sparse-switch
.end method
