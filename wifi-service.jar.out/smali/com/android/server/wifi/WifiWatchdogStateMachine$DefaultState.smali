.class Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1580
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1582
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1583
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1584
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForMptcpChange()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1585
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1586
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 1587
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 1591
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1647
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1650
    :cond_0
    :goto_0
    :sswitch_0
    return v6

    .line 1593
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1594
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v4, "Updating wifi-watchdog secure settings"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 1597
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4000(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3902(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 1599
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 1600
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLinkSpeed:I
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4302(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 1601
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentRssi:I
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4402(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto :goto_0

    .line 1616
    :sswitch_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 1619
    :sswitch_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 1622
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 1623
    .local v1, "qcUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1626
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "WifiWatchdogStateMachine"

    const-string v4, "update qc"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v3

    const v4, 0x21048

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    .line 1628
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setUrlMap(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1631
    .end local v1    # "qcUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 1632
    .local v0, "mhdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1633
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    const-string v4, "update mhd"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->updateParameters(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1638
    .end local v0    # "mhdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1639
    .local v2, "smartCM":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1642
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "WifiWatchdogStateMachine"

    const-string v4, "update cm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->createSmartCMFile(Ljava/lang/String;)I

    .line 1644
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setEvaluationParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1591
    nop

    :sswitch_data_0
    .sparse-switch
        0x21002 -> :sswitch_0
        0x21003 -> :sswitch_2
        0x21004 -> :sswitch_0
        0x21005 -> :sswitch_0
        0x21006 -> :sswitch_1
        0x21007 -> :sswitch_0
        0x21008 -> :sswitch_3
        0x21009 -> :sswitch_4
        0x2100b -> :sswitch_0
        0x2100c -> :sswitch_0
        0x21047 -> :sswitch_0
        0x213e9 -> :sswitch_5
        0x213ea -> :sswitch_6
        0x213eb -> :sswitch_7
        0x25015 -> :sswitch_0
        0x25016 -> :sswitch_0
    .end sparse-switch
.end method
