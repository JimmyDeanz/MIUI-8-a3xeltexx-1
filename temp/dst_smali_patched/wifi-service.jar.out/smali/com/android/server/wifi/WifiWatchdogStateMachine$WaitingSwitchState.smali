.class Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingSwitchState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const v5, 0x21041

    const/4 v4, 0x0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$25500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchableCondition:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$25600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$25700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$25800(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$25900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v1, 0x21041

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26000(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v1, v2

    :goto_0
    return v1

    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_MOBILE_HIPRI_CONNECTED / EVENT_MOBILE_CONNECTED :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x3c

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const-string v4, "WifiWatchdogStateMachine"

    const-string v5, "Wait to be connected MOBILE completely."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchable:Z
    invoke-static {v4, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    if-le v5, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    :cond_1
    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v4, v2, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_2
    :goto_2
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WaitingSwitchState sleep exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12808(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SWITCH_TIMEOUT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v4

    const-string v5, "enableHIPRI"

    invoke-virtual {v4, v2, v5}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    const-string v4, "WifiWatchdogStateMachine"

    const-string v5, "[WaitingSwitchState] stop FEATURE_ENABLE_HIPRI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v4, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    if-le v4, v1, :cond_5

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pause qualifying for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1800000ms"

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v1, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12702(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    :cond_6
    const-string v1, "a while"

    goto :goto_3

    :sswitch_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v2, "[WaitingSwitchState]CMD_QUALITY_RECHECK"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_3
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v2, "[WaitingSwitchState]EVENT_AUTHENTICATION_COMPLETE"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v2, "[QualityCheckingState] EVENT_ENABLE_HIPRI"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2100c -> :sswitch_2
        0x2103f -> :sswitch_0
        0x21040 -> :sswitch_0
        0x21041 -> :sswitch_1
        0x21042 -> :sswitch_4
        0x21047 -> :sswitch_3
    .end sparse-switch
.end method
