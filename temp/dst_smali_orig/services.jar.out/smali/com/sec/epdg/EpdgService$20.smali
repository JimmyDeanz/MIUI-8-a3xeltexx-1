.class Lcom/sec/epdg/EpdgService$20;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v11, 0xb

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    .local v7, "ni":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .local v0, "action":Ljava/lang/String;
    move-object v3, p1

    check-cast v3, Landroid/content/Intent;

    .local v3, "intent":Landroid/content/Intent;
    # invokes: Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "[EPDGService]"

    const-string v9, "No Sim card. Ignore all notifications"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_2

    const-string v8, "networkInfo"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .end local v7    # "ni":Landroid/net/NetworkInfo;
    check-cast v7, Landroid/net/NetworkInfo;

    .restart local v7    # "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v8, "[EPDGService]"

    const-string v9, "Action is null"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    const-string v8, "[EPDGService]"

    const-string v9, "Cannot get network info from intent"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .local v6, "networkType":I
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .local v5, "networkState":Landroid/net/NetworkInfo$State;
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-ne v6, v9, :cond_0

    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v8, :cond_0

    const-string v8, "[EPDGService]"

    const-string v9, "Wifi is disconnected"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z
    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->access$7402(Z)Z

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v8

    sget-object v9, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v8, v9}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v8

    if-eqz v8, :cond_5

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v8

    sget-object v9, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v8, v9}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    sget-object v8, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    # invokes: Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$9700(Lcom/sec/epdg/EpdgService$IpType;)V

    sget-object v8, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    # invokes: Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$6200(Lcom/sec/epdg/EpdgService$IpType;)V

    :cond_5
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v8, v12}, Lcom/sec/epdg/EpdgService;->access$9802(Lcom/sec/epdg/EpdgService;I)I

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I
    invoke-static {v8, v12}, Lcom/sec/epdg/EpdgService;->access$1702(Lcom/sec/epdg/EpdgService;I)I

    goto/16 :goto_0

    :cond_6
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eq v8, v9, :cond_b

    const-string v8, "[EPDGService]"

    const-string v9, "CONNECTIVITY_ACTION is triggered by non WIFI network"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "apnType":Ljava/lang/String;
    if-nez v2, :cond_7

    const-string v8, "[EPDGService]"

    const-string v9, "CONNECTIVITY_ACTION is non interested network so ignore"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v8, "[EPDGService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "networkState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " networkType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isOngoingConnectionOverWifi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v8, :cond_8

    if-ne v6, v11, :cond_0

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v6}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V
    invoke-static {v8, v12, v9}, Lcom/sec/epdg/EpdgService;->access$5400(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v8

    sget-object v9, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-virtual {v8, v9}, Lcom/sec/epdg/mapcon/MapconTable;->resetAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)V

    goto/16 :goto_0

    :cond_8
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v8, :cond_0

    if-nez v6, :cond_a

    # getter for: Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$9900()Landroid/net/ConnectivityManager;

    move-result-object v8

    # getter for: Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$9900()Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v12}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .local v4, "lp":Landroid/net/LinkProperties;
    if-nez v4, :cond_9

    const-string v8, "[EPDGService]"

    const-string v9, "MOBILE linkproperty is null."

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    # setter for: Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sec/epdg/EpdgService;->access$10002(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "[EPDGService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Internet PDN is connected; with interface Name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/epdg/EpdgService;->access$10000(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "lp":Landroid/net/LinkProperties;
    :cond_a
    if-ne v6, v11, :cond_0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v6}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v2    # "apnType":Ljava/lang/String;
    :cond_b
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v8, :cond_10

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v8, v9}, Lcom/sec/epdg/EpdgService;->access$9802(Lcom/sec/epdg/EpdgService;I)I

    sget-boolean v8, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v8, :cond_e

    # invokes: Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$10100()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v8

    sget-object v9, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v8, v9, :cond_c

    const-string v8, "[EPDGService]"

    const-string v9, "BLACK LIST country. voWIFI is not allowed"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    # getter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3100()Lcom/sec/epdg/EpdgService$WfcProfileTask;

    move-result-object v8

    if-eqz v8, :cond_d

    const-string v8, "[EPDGService]"

    const-string v9, "AP status check is running"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v8, "[EPDGService]"

    const-string v9, "check AP is allowed for EPDG service first"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    iget-object v9, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v10

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    # setter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$3102(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;

    # getter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3100()Lcom/sec/epdg/EpdgService$WfcProfileTask;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "[EPDGService]"

    const-string v9, "WifiCallingDisabled so ignore"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v8, p0, Lcom/sec/epdg/EpdgService$20;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiConnected()V
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$6400(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    :cond_10
    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v8, :cond_0

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_11

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v8

    sget-object v9, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v8, v9}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    :cond_11
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOrangeSpainRetryTimer()Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_12
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/epdg/EpdgUtils;->getApnNamebyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "apnName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    const-string v8, "[EPDGService]"

    const-string v9, "reset throttle state for ATT, OSP"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
