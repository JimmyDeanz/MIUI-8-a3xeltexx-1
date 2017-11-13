.class Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMRecordsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/SIMRecords$1;

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "action":Ljava/lang/String;
    const-string v5, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 598
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v6, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 599
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v8, :cond_1

    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 602
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    if-nez v5, :cond_0

    .line 603
    const-string v5, "gsm.sim.selectnetwork"

    const-string v6, "GSM"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCardDataInit()V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 607
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v6, "gsm.sim.state"

    const-string v7, "ABSENT"

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "state":Ljava/lang/String;
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 609
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCardDataInit()V

    goto :goto_0

    .line 617
    .end local v4    # "state":Ljava/lang/String;
    :cond_2
    const-string v5, "gsm.sim.selectnetwork"

    const-string v6, "GSM"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCardDataInit()V

    goto :goto_0

    .line 620
    :cond_3
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 621
    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 635
    :cond_4
    const-string v5, "android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 636
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v6, "[Voicemail] receive android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 637
    const-string v5, "networkName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "mNetworkName":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 639
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v6, "[Voicemail] Voicemail number can not be set because there is no matched networkName!"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "CSC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigVoicemailSource"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 642
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Voicemail] Voicemail number can not be set what matched with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v8, :cond_9

    .line 644
    const-string v5, "SLOT_ID"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 645
    .local v0, "SlotID":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    if-ne v5, v0, :cond_8

    .line 646
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByNetworkName(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$100(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)V

    .line 647
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$202(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .end local v0    # "SlotID":I
    :cond_8
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    const-string v5, "CSC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigVoicemailSource"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CSC_LOADED_VOICEMAIL_DONE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .local v2, "intent2":Landroid/content/Intent;
    const-string v5, "SLOT_ID"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 657
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sender CSC_LOADED_VOICEMAIL_DONE = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$200(Lcom/android/internal/telephony/uicc/SIMRecords;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SlotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 650
    .end local v2    # "intent2":Landroid/content/Intent;
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByNetworkName(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$100(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)V

    .line 651
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$202(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 660
    .end local v3    # "mNetworkName":Ljava/lang/String;
    :cond_a
    const-string v5, "android.intent.action.CSC_UPDATE_VOICEMAIL_DONE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 661
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v6, "[Voicemail] receive android.intent.action.CSC_UPDATE_VOICEMAIL_DONE"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 662
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    if-eqz v5, :cond_b

    .line 663
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .line 664
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v6, "[Voicemail] Reload voicemail-conf.xml as it could be changed."

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 666
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "CSC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigVoicemailSource"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 668
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$200(Lcom/android/internal/telephony/uicc/SIMRecords;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 669
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$200(Lcom/android/internal/telephony/uicc/SIMRecords;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByNetworkName(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$100(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
