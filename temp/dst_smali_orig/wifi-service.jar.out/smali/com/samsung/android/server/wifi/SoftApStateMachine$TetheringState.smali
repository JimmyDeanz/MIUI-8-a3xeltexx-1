.class Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;
.super Lcom/android/internal/util/State;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const-string v0, "SoftApStateMachine"

    const-string v1, "inside TetheringState enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const v2, 0x2001e

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # ++operator for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4204(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SoftApStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    :cond_1
    :goto_0
    return v1

    :sswitch_0
    const-string v2, "SoftApStateMachine"

    const-string v3, "TetheringState enter and msg is CMD_TETHER_STATE_CHANGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;

    .local v0, "stateChange":Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SoftApStateMachine"

    const-string v3, "TetheringState and transition to Tethered State"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheredState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4400(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .end local v0    # "stateChange":Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    :sswitch_1
    const-string v3, "SoftApStateMachine"

    const-string v4, "TetheringState and msg is CMD_TETHER_NOTIFICATION_TIMED_OUT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v4, "Failed to get tether update, shutdown soft access point"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4600(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget v3, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLastDriverErrorMessage:I
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1602(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const v3, 0x20018

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessageAtFrontOfQueue(I)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4800(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_1
    .end sparse-switch
.end method
