.class Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogDisabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 1657
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1660
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 1662
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1666
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1686
    :goto_0
    const/4 v2, 0x0

    :cond_0
    :goto_1
    return v2

    .line 1668
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1669
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1672
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 1673
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "networkInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1676
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    sget-object v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$6;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 1678
    :pswitch_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v4, "Watchdog disabled, verify link"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1679
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    goto :goto_0

    .line 1666
    nop

    :pswitch_data_0
    .packed-switch 0x21001
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1676
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
