.class Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;
.super Lcom/android/internal/util/State;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UntetheringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "SoftApStateMachine"

    const-string v1, "inside untetheringstate enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    const-string v1, "net.forward.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "net.forward.disable"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v1, "net.forward.disable = null"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5600(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    :cond_0
    const-string v0, "100"

    const-string v1, "net.leasetime"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "net.leasetime"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v1, "net.leasetime = null"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2702(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2700(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setRvfMode(I)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPreviousTetherData:I
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "persist.sys.tether_data"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPreviousTetherData:I
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5802(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v1, "persist.sys.tether_data = 1"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const v2, 0x2001e

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # ++operator for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4204(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SoftApStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "SoftApStateMachine"

    const-string v2, "untetheringstate and msg is CMD_TETHER_STATE_CHANGE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;

    .local v0, "stateChange":Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    .end local v0    # "stateChange":Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .restart local v0    # "stateChange":Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$6000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .end local v0    # "stateChange":Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    :sswitch_1
    const-string v1, "SoftApStateMachine"

    const-string v2, "untetheringstate and msg is CMD_TETHER_NOTIFICATION_TIMED_OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v2, "Failed to get tether update, force stop access point"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$6100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$6200(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :sswitch_2
    const-string v1, "SoftApStateMachine"

    const-string v2, "untetheringstate and msg is CMD_START_AP CMD_STOP_AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$6300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_1
    .end sparse-switch
.end method
