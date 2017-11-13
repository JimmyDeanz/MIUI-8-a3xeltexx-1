.class Lcom/android/server/wifi/WifiServiceImpl$12;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x3

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->WIFI_STOP_SCAN_FOR_ETWS:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$4300()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mBcSmsReceived:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$4400(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v7

    const v8, 0x26002

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mBcSmsReceived:Z
    invoke-static {v7, v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$4402(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mScreenOn:Z
    invoke-static {v6, v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$4502(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v5

    if-ne v5, v11, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$4600(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/hardware/scontext/SContextListener;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "WifiService"

    const-string v6, "ACTION_SCREEN_ON, checkSensorStatus !!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput v10, v5, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->checkSensorStatus(Landroid/content/Context;)Z
    invoke-static {v5, p1}, Lcom/android/server/wifi/WifiServiceImpl;->access$4700(Lcom/android/server/wifi/WifiServiceImpl;Landroid/content/Context;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26002

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    :cond_3
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v5

    const v6, 0x2600c

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_1

    :cond_4
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->WIFI_STOP_SCAN_FOR_ETWS:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$4300()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mBcSmsReceived:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$4402(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v5

    const v7, 0x26003

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$4600(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/hardware/scontext/SContextListener;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "WifiService"

    const-string v7, "ACTION_SCREEN_OFF, mSContextManager.unregisterListener !!"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mScreenOn:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$4502(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput v10, v5, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mSContextManager:Landroid/hardware/scontext/SContextManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$4800(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/hardware/scontext/SContextManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$4600(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/hardware/scontext/SContextListener;

    move-result-object v6

    const/16 v7, 0x19

    invoke-virtual {v5, v6, v7}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$4602(Lcom/android/server/wifi/WifiServiceImpl;Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextListener;

    goto :goto_1

    :cond_6
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v5, "plugged"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "pluggedType":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v5

    const v7, 0x26004

    invoke-virtual {v5, v7, v3, v6, v9}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_1

    .end local v3    # "pluggedType":I
    :cond_7
    const-string v7, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "state":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_1

    .end local v4    # "state":I
    :cond_8
    const-string v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "phoneinECMState"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "emergencyMode":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v7

    const v8, 0x26001

    if-eqz v1, :cond_9

    :goto_2
    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received broadcast ACTION_EMERGENCY_CALLBACK_MODE_CHANGED , emergencyMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    move v5, v6

    goto :goto_2

    .end local v1    # "emergencyMode":Z
    :cond_a
    const-string v7, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    goto/16 :goto_1

    :cond_b
    const-string v7, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->WIFI_STOP_SCAN_FOR_ETWS:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$4300()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mBcSmsReceived:Z
    invoke-static {v6, v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$4402(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mBlockScanFromOthers:Z
    invoke-static {v6, v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$4902(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    const-string v5, "WifiService"

    const-string v6, "received broadcast ETWS, Scanning will be blocked"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ss"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "iccState":Ljava/lang/String;
    const-string v5, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim state changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ABSENT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v5

    const/16 v7, 0xb

    if-eq v5, v7, :cond_d

    const-string v5, "WifiService"

    const-string v7, "resetting country code because SIM is removed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->resetCountryCode()V

    const-string v5, "WifiService"

    const-string v7, "INTENT_VALUE_ICC_ABSENT received, disable wifi hotspot"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v5, v9, v6}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_d
    const-string v5, "IMSI"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->reloadSIMState()V

    goto/16 :goto_1

    :cond_e
    const-string v5, "ABSENT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v5

    if-ne v5, v11, :cond_1

    const-string v5, "WifiService"

    const-string v6, "INTENT_VALUE_ICC_ABSENT received, send absentSIMState msg"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->absentSIMState()V

    goto/16 :goto_1
.end method
