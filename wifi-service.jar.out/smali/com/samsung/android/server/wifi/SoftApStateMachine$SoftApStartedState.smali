.class Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x4

    const v6, 0x20015

    const/4 v2, 0x0

    .line 883
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SoftApStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

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

    .line 884
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 925
    :goto_0
    return v2

    .line 886
    :sswitch_0
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v4, "Stopping Soft AP"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3600(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    .line 889
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v6, :cond_2

    .line 894
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApIface(Z)V

    .line 896
    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 901
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    .line 902
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3400(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3800(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    .line 903
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_3

    .line 904
    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    if-ne v3, v7, :cond_4

    .line 905
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v6, v7, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(III)V

    .line 925
    :cond_3
    :goto_3
    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v4, "Exception in stopAccessPoint()"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 897
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 907
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v2, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    goto :goto_3

    .line 915
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;

    .line 916
    .local v1, "stateChange":Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    const-string v2, "SoftApStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoftApStartedState and trying to startTethering and stateChange.available is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 918
    const-string v2, "SoftApStateMachine"

    const-string v3, "SoftApStartedState ,transition to Tethering State"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheringState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4000(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 884
    nop

    :sswitch_data_0
    .sparse-switch
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_0
        0x2001d -> :sswitch_2
    .end sparse-switch
.end method
