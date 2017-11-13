.class Lcom/sec/epdg/EpdgService$26;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v0, 0x0

    .local v0, "delayHO":Z
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[EPDGService]"

    const-string v4, "Wifi off gets called, stop the ip config timer"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$2300(Lcom/sec/epdg/EpdgService;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "[EPDGService]"

    const-string v4, "WIFI signal is weak but LTE is not available. keep WLAN!!!"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v3, v4, :cond_a

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getHandoverThresholdMet()Z

    move-result v3

    if-eqz v3, :cond_9

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v3

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    if-eq v3, v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorMTN()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isNeededToSendDeregOnWifiOnly()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "[EPDGService]"

    const-string v4, "Weak wifi : need de-register"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z
    invoke-static {v3, v7}, Lcom/sec/epdg/EpdgService;->access$2800(Lcom/sec/epdg/EpdgService;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getHandoverThresholdMet()Z

    move-result v3

    if-eqz v3, :cond_4

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setHandoverThresholdMet(Z)V

    :cond_4
    const-string v3, "[EPDGService]"

    const-string v4, "Moving all PDN\'s from wifi"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->startTimersIfNeeded()V
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$10500(Lcom/sec/epdg/EpdgService;)V

    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-eqz v3, :cond_5

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    :cond_5
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-eqz v3, :cond_6

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    :cond_6
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v3, v4, :cond_7

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/epdg/handover/EpdgImsListener;->setEcbmChanged(Z)V

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v3, v4, :cond_7

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v3

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v5

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setWifiThreshold(III)V

    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isNeededToSendDeregOnWifiOnly()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v0, :cond_d

    # setter for: Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$4602(Z)Z

    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->updateCpEpdgHoThreshold(Z)V
    invoke-static {v3, v7}, Lcom/sec/epdg/EpdgService;->access$10600(Lcom/sec/epdg/EpdgService;Z)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "wifiIntent":Landroid/content/Intent;
    const-string v3, "com.sec.epdg.EPDG_NOTAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EPDG_NOTAVAILABLE"

    invoke-static {v3}, Lcom/sec/epdg/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    const-string v3, "EXTRA_WEAK_WIFI"

    iget-object v4, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$9800(Lcom/sec/epdg/EpdgService;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send EPDG Not Available broadcast : EXTRA_WEAK_WIFI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->access$9800(Lcom/sec/epdg/EpdgService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V
    invoke-static {v3, v7}, Lcom/sec/epdg/EpdgService;->access$10700(Lcom/sec/epdg/EpdgService;Z)V

    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    return-void

    .end local v2    # "wifiIntent":Landroid/content/Intent;
    :cond_9
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v3

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v3, v4, :cond_b

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v3, v4, :cond_1

    :cond_b
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v3

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getHandoverThresholdMet()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    if-eq v3, v6, :cond_1

    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    # setter for: Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$4602(Z)Z

    goto/16 :goto_1

    :cond_e
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "operatorNumeric":Ljava/lang/String;
    if-nez v0, :cond_8

    const-string v3, "PRT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "XEO"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "26006"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_f
    iget-object v3, p0, Lcom/sec/epdg/EpdgService$26;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->movePdnFromWifi()V
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$4700(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_1
.end method
