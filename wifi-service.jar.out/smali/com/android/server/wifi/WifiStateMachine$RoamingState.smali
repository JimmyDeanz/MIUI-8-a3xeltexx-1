.class Lcom/android/server/wifi/WifiStateMachine$RoamingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoamingState"
.end annotation


# instance fields
.field mAssociated:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 15057
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 15061
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15062
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoamingState Enter mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$27100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 15068
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    .line 15069
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Roam Watchdog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 15070
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x2005e

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v3, v3, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 15072
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    .line 15073
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    const-string v1, "cn_rom"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 15074
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 15201
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "WifiStateMachine: Leaving Roaming state"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 15202
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    const-string v1, "cn_rom"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 15203
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 15077
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v6, p1, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 15079
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 15196
    :cond_0
    :goto_0
    return v4

    .line 15081
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 15082
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 15083
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 15084
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    sget v6, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_IP_CONFIG:I

    invoke-virtual {v5, v1, v6}, Lcom/android/server/wifi/WifiConfigStore;->noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 15089
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "Roaming and Watchdog reports poor link -> ignore"

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    move v4, v5

    .line 15090
    goto :goto_0

    .line 15092
    :sswitch_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "Roaming and CS doesnt want the network -> ignore"

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_2
    move v4, v5

    .line 15093
    goto :goto_0

    .line 15095
    :sswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_3

    .line 15096
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$37800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    :cond_3
    :goto_1
    move v4, v5

    .line 15196
    goto :goto_0

    .line 15107
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/StateChangeResult;

    .line 15108
    .local v2, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v4, v6, :cond_4

    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v4, v6, :cond_4

    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v6, :cond_6

    .line 15111
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15112
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATE_CHANGE_EVENT in roaming state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/wifi/StateChangeResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 15115
    :cond_5
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 15117
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 15118
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$37900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 15121
    :cond_6
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v6, :cond_3

    .line 15123
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    .line 15124
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 15125
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$18302(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 15130
    .end local v2    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v4, v4, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_3

    .line 15131
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "roaming watchdog! -> disconnect"

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 15132
    :cond_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$38008(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 15133
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 15134
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 15135
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$38100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 15136
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 15140
    :sswitch_6
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    if-eqz v4, :cond_a

    .line 15141
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "roaming and Network connection established"

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 15142
    :cond_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 15143
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$14802(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 15144
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 15145
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$29700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 15146
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->CSC_PREFERRED_BAND:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$14400()Ljava/lang/String;

    move-result-object v4

    const-string v6, "11AC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 15147
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateIconInfo()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$29800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 15149
    :cond_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 15150
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v5}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    .line 15151
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$29900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 15152
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$29000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$38200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 15154
    :cond_a
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v6

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 15159
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 15161
    .local v0, "bssid":Ljava/lang/String;
    const-string v3, ""

    .line 15162
    .local v3, "target":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    .line 15163
    :cond_b
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NETWORK_DISCONNECTION_EVENT in roaming state BSSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 15167
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15168
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 15169
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$38300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 15174
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :sswitch_8
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSID_TEMP_DISABLED nid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isRoaming="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " roam="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$26700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 15178
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 15179
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 15180
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_c

    .line 15181
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 15183
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    sget v6, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_AUTH_FAILURE:I

    invoke-virtual {v5, v1, v6}, Lcom/android/server/wifi/WifiConfigStore;->noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V

    .line 15186
    :cond_c
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 15187
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$38400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 15191
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$38500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 15079
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_3
        0x2005e -> :sswitch_5
        0x2008b -> :sswitch_0
        0x20090 -> :sswitch_2
        0x21015 -> :sswitch_1
        0x24003 -> :sswitch_6
        0x24004 -> :sswitch_7
        0x24006 -> :sswitch_4
        0x2400d -> :sswitch_8
    .end sparse-switch
.end method
