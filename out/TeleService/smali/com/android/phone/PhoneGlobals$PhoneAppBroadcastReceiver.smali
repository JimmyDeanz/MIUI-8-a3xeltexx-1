.class Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "x1"    # Lcom/android/phone/PhoneGlobals$1;

    .prologue
    .line 799
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 802
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 804
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_1

    .line 806
    .local v2, "enabled":Z
    :goto_0
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setRadioPower(Z)V

    .line 874
    .end local v2    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v8

    .line 804
    goto :goto_0

    .line 807
    :cond_2
    const-string v9, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 808
    const-string v9, "subscription"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 810
    .local v7, "subId":I
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 811
    .local v5, "phoneId":I
    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 820
    .local v6, "state":Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 826
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :goto_2
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v9, v6}, Lcom/android/internal/telephony/PhoneConstants$DataState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "roamingOn"

    const-string v10, "reason"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v1, v2

    .line 831
    .local v1, "disconnectedDueToRoaming":Z
    :goto_3
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mDataDisconnectedDueToRoaming:Z
    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Z

    move-result v8

    if-eq v8, v1, :cond_0

    .line 832
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mDataDisconnectedDueToRoaming:Z
    invoke-static {v8, v1}, Lcom/android/phone/PhoneGlobals;->access$502(Lcom/android/phone/PhoneGlobals;Z)Z

    .line 833
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v8, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    const/16 v8, 0xa

    :goto_4
    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 820
    .end local v1    # "disconnectedDueToRoaming":Z
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    goto :goto_2

    .restart local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_4
    move v1, v8

    .line 826
    goto :goto_3

    .line 833
    .restart local v1    # "disconnectedDueToRoaming":Z
    :cond_5
    const/16 v8, 0xb

    goto :goto_4

    .line 836
    .end local v1    # "disconnectedDueToRoaming":Z
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "phoneId":I
    .end local v6    # "state":Ljava/lang/String;
    .end local v7    # "subId":I
    :cond_6
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 842
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x8

    const-string v11, "ss"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 844
    :cond_7
    const-string v9, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 845
    const-string v8, "phoneName"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, "newPhone":Ljava/lang/String;
    const-string v8, "phone"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 848
    .restart local v5    # "phoneId":I
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Radio technology switched. Now "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") is active."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->initForNewRadioTechnology(I)V
    invoke-static {v8, v5}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;I)V

    goto/16 :goto_1

    .line 851
    .end local v3    # "newPhone":Ljava/lang/String;
    .end local v5    # "phoneId":I
    :cond_8
    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 852
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v8, p2}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 853
    :cond_9
    const-string v9, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 854
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 855
    const-string v9, "PhoneApp"

    const-string v10, "Emergency Callback Mode arrived in PhoneApp."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-string v9, "phoneinECMState"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 858
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v8, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 864
    :cond_a
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got ACTION_EMERGENCY_CALLBACK_MODE_CHANGED, but ECM isn\'t supported for phone: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 868
    :cond_b
    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 869
    const-string v9, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/phone/PhoneGlobals;->mDockState:I

    .line 872
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v11, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
