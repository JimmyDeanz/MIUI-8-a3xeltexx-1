.class Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForUserSelectionState"
.end annotation


# instance fields
.field private mPoorType:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$36900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v3, 0xb

    const/4 v4, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getBroadcastNotificationMessage(IZ)Landroid/content/Intent;
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$37000(Lcom/android/server/wifi/WifiStateMachine;IZ)Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    const-string v1, "KTT"

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$13800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isKTCMWifiSettingScreen(Landroid/content/Context;)Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$37100(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "keep connection for KTCM"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$37200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_1
    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "WifiStateMachine"

    const-string v2, "wrong state change!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$32200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$37300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :goto_0
    return-void

    :pswitch_0
    iget v1, v0, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x21015
        :pswitch_0
    .end packed-switch
.end method

.method public exit()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v2, 0xb

    const/4 v3, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getBroadcastNotificationMessage(IZ)Landroid/content/Intent;
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$37000(Lcom/android/server/wifi/WifiStateMachine;IZ)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    move v1, v2

    :goto_0
    return v1

    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_3

    move v0, v1

    .local v0, "keepConnection":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CMD_USER_SELECTION : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WifiStateMachine"

    const-string v4, "CMD_USER_SELECTION - setLastSelectedConfiguration(-1)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    :cond_1
    if-eqz v0, :cond_4

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "keep connection"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    const-string v4, "skip_internet_check"

    const-string v5, "1"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateSkipInternetCheck(IZ)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$37400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .end local v0    # "keepConnection":Z
    :cond_3
    move v0, v2

    goto/16 :goto_1

    .restart local v0    # "keepConnection":Z
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "disable connection"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_5
    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    if-ne v3, v8, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    const-string v5, "usable_internet"

    const-string v6, "0"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wifi/WifiConfigStore;->updateUsableInternet(IZ)V

    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    if-ne v7, v8, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->disablePoorNetwork(IILjava/lang/String;Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$37500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20136
        :pswitch_0
    .end packed-switch
.end method
