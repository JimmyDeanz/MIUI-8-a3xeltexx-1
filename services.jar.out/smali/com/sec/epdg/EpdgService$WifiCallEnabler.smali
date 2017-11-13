.class Lcom/sec/epdg/EpdgService$WifiCallEnabler;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiCallEnabler"
.end annotation


# instance fields
.field forced:Z

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;

.field wificallenable:I

.field wificallpreferred:I


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgService;IIZ)V
    .locals 1
    .param p2, "enable"    # I
    .param p3, "preferred"    # I
    .param p4, "isForced"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3842
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3838
    iput v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallenable:I

    .line 3839
    iput v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallpreferred:I

    .line 3840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->forced:Z

    .line 3843
    iput p2, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallenable:I

    .line 3844
    iput p3, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallpreferred:I

    .line 3845
    iput-boolean p4, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->forced:Z

    .line 3846
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3850
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFiCallEnable value is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallenable:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3852
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x50

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3854
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    iget v2, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallenable:I

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    move v4, v3

    move v5, v3

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v0 .. v5}, Lcom/sec/epdg/EpdgService;->access$7000(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3855
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->access$6000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3857
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallenable:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallpreferred:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    .line 3858
    :cond_1
    const-string v0, "[EPDGService]"

    const-string v1, "WifiCall is disabled"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v1, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$9000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    .line 3861
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isWaitDeRegiWhenWFCDisable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3862
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$9100(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3879
    :cond_2
    :goto_1
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3881
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 3884
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 3885
    # setter for: Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$9202(I)I

    .line 3916
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v1

    .line 3854
    goto :goto_0

    .line 3863
    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3864
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto :goto_2

    .line 3866
    :cond_6
    const-string v0, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVoWifiWave2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3867
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto :goto_2

    .line 3870
    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3871
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z
    invoke-static {v0, v3}, Lcom/sec/epdg/EpdgService;->access$2800(Lcom/sec/epdg/EpdgService;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3872
    const-string v0, "[EPDGService]"

    const-string v1, "WifiCallEnabler - do not need de-register "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3876
    :cond_8
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3887
    :cond_9
    const-string v0, "[EPDGService]"

    const-string v2, "WifiCall is enabled"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3888
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->access$9000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    .line 3890
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3891
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$9300(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3892
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 3894
    :cond_a
    iget v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallpreferred:I

    if-eq v0, v9, :cond_3

    .line 3895
    iget v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallpreferred:I

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$9202(I)I

    .line 3897
    iget v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallpreferred:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    .line 3898
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 3904
    .local v7, "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :goto_3
    if-eqz v7, :cond_3

    .line 3905
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v8

    .line 3906
    .local v8, "salesCode":Ljava/lang/String;
    const-string v0, "ORO"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3907
    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v0, "ims"

    aput-object v0, v6, v3

    .line 3908
    .local v6, "apnList":[Ljava/lang/String;
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prefered Order for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto/16 :goto_2

    .line 3899
    .end local v6    # "apnList":[Ljava/lang/String;
    .end local v7    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .end local v8    # "salesCode":Ljava/lang/String;
    :cond_b
    iget v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->wificallpreferred:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    .line 3900
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .restart local v7    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    goto :goto_3

    .line 3902
    .end local v7    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_c
    sget-object v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .restart local v7    # "preferOrder":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    goto :goto_3

    .line 3911
    .restart local v8    # "salesCode":Ljava/lang/String;
    :cond_d
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$WifiCallEnabler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    invoke-static {v0, v7}, Lcom/sec/epdg/EpdgService;->access$9400(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto/16 :goto_2
.end method
