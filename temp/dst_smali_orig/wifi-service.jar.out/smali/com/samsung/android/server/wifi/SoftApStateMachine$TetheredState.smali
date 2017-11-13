.class Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->getName()Ljava/lang/String;

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
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;

    .local v0, "stateChange":Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    const-string v3, "SoftApStateMachine"

    const-string v4, "TetheredState and msg is CMD_TETHER_STATE_CHANGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v4, "Tethering reports wifi as untethered!, shut down soft Ap"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .end local v0    # "stateChange":Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    :sswitch_1
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v4, "Untethering before stopping AP"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->stopTethering()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    const-string v2, "SoftApStateMachine"

    const-string v3, "TetheredState enter and msg is CMD_STOP_AP and transition to unTetheringState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mUntetheringState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5300(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$5500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
    .end sparse-switch
.end method
