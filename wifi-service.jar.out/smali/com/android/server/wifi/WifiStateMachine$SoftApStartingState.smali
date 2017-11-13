.class Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 17081
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 17084
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$44700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v1

    .line 17085
    .local v1, "message":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0x20015

    if-ne v2, v3, :cond_5

    .line 17086
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 17088
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 17089
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 17117
    :goto_0
    return-void

    .line 17091
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRVFMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$44800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-nez v2, :cond_3

    .line 17092
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x20019

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 17093
    const-string v2, "1"

    const-string v3, "net.forward.disable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17094
    const-string v2, "net.forward.disable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 17096
    :cond_1
    const-string v2, "100"

    const-string v3, "net.leasetime"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17097
    const-string v2, "net.leasetime"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 17112
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$44900(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 17099
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRVFMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$44800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-lez v2, :cond_2

    .line 17100
    const-string v2, "net.forward.disable"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 17101
    const-string v2, "net.leasetime"

    const-string v3, "100"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 17102
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "net.forward.disable = 1, net.leasetime = 100"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 17110
    :cond_4
    const/4 v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    goto :goto_1

    .line 17115
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal transition to SoftApStartingState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17120
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v3, p1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 17122
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 17163
    :goto_0
    return v1

    .line 17135
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$45000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    :goto_1
    move v1, v2

    .line 17163
    goto :goto_0

    .line 17138
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 17139
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 17141
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRVFMode:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$44800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-lez v1, :cond_0

    .line 17142
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 17145
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$44900(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 17147
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "Softap config is null!"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 17148
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x20017

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    goto :goto_1

    .line 17152
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V

    .line 17153
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLTECoexState()I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 17154
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$45100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$45200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 17157
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v3, 0xe

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V

    .line 17158
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$10800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$45300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 17122
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_2
        0x20017 -> :sswitch_3
        0x20018 -> :sswitch_0
        0x2001c -> :sswitch_1
        0x2001d -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20050 -> :sswitch_0
        0x20054 -> :sswitch_0
        0x20055 -> :sswitch_0
        0x2005a -> :sswitch_0
    .end sparse-switch
.end method
