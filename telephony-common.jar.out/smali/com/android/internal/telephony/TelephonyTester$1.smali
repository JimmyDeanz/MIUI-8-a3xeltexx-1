.class Lcom/android/internal/telephony/TelephonyTester$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TelephonyTester;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/TelephonyTester;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "action":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sIntentReceiver.onReceive: action="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 102
    const-string v13, "AP"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_ConfigPcoControlType"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 103
    const-string v13, "com.samsung.intent.action.PCO_TEST"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget-boolean v13, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v13, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    const-string v14, "pco"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/PhoneBase;->setPcoValue(I)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v13, "com.samsung.intent.action.REFRESH_NITZ_TIME"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 110
    const-string v13, "Refresh NITZ time"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->refreshNitzTime(Landroid/os/Message;)V

    goto :goto_0

    .line 116
    :cond_2
    const-string v13, "com.samsung.intent.action.SET_PREFERRED_NETWORK_TYPE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 117
    const-string v13, "networktype"

    const/16 v14, 0x16

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 118
    .local v10, "networkType":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetPreferredNetworkType - networktype: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 124
    .end local v10    # "networkType":I
    :cond_3
    const-string v13, "com.samsung.intent.action.IMS_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 125
    const-string v13, "state"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 126
    .local v12, "state":I
    const-string v13, "feature_mask"

    const/16 v14, 0xb

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 127
    .local v5, "featureMask":I
    const-string v13, "network_type"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 128
    .restart local v10    # "networkType":I
    const-string v13, "ecmp_state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 129
    .local v3, "ecmpState":I
    const-string v13, "epdg_state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 130
    .local v4, "epdgState":I
    const-string v13, "feature_tag"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 131
    .local v6, "featureTag":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ImsRegistrationState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10}, Lcom/android/internal/telephony/LegacyIms;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", RegiState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v12}, Lcom/android/internal/telephony/LegacyIms;->imsStatusToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", FeatureMask: ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Lcom/android/internal/telephony/LegacyIms;->featureMaskToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", EpdgState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", EcmpStatus: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", FeatureTag: ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v6}, Lcom/android/internal/telephony/LegacyIms;->featureTagToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 135
    const/4 v13, 0x7

    new-array v8, v13, [I

    const/4 v13, 0x0

    aput v12, v8, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v8, v13

    const/4 v13, 0x2

    aput v5, v8, v13

    const/4 v13, 0x3

    aput v10, v8, v13

    const/4 v13, 0x4

    aput v3, v8, v13

    const/4 v13, 0x5

    aput v4, v8, v13

    const/4 v13, 0x6

    aput v6, v8, v13

    .line 136
    .local v8, "imsRegiState":[I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    const/16 v14, 0x27

    new-instance v15, Landroid/os/AsyncResult;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v13, v14, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 137
    .local v9, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    const-wide/16 v14, 0x3e8

    invoke-virtual {v13, v9, v14, v15}, Lcom/android/internal/telephony/PhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 142
    .end local v3    # "ecmpState":I
    .end local v4    # "epdgState":I
    .end local v5    # "featureMask":I
    .end local v6    # "featureTag":I
    .end local v8    # "imsRegiState":[I
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "networkType":I
    .end local v12    # "state":I
    :cond_4
    const-string v13, "com.samsung.intent.action.TEST_TELEPHONY_FEATURES_CHECK"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 143
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TelephonyFeatures.getNtcValue(NTCTYPE_MAINOPERATOR): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 144
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TelephonyFeatures.getNtcValue(NTCTYPE_SUBOPERATOR): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 145
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TelephonyFeatures.getNtcValue(NTCTYPE_OPERATORTYPE): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 146
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TelephonyFeatures.getNtcValue(NTCTYPE_COUNTRY): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 147
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TelephonyFeatures.isUsaCdmaModel(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 148
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TelephonyFeatures.isUsaGlobalModel(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 149
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TelephonyFeatures.getUsedNetworkType(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getUsedNetworkType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 150
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TelephonyFeatures.SALES_CODE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 151
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TelephonyFeatures.getVoltePolicy(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getVoltePolicy()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 152
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    const/16 v13, 0x11

    if-ge v7, v13, :cond_0

    .line 153
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TelephonyFeatures.getNtcFeature("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 152
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 157
    .end local v7    # "i":I
    :cond_5
    const-string v13, "com.samsung.intent.action.TEST_TELEPHONY_FEATURES_CHANGE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 158
    const-string v13, "operator"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, "operator":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 160
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->reInitialize()V

    goto/16 :goto_0

    .line 162
    :cond_6
    invoke-static {v11}, Lcom/android/internal/telephony/TelephonyFeatures;->reInitilizeForTest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v11    # "operator":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 168
    const-string v13, "simulate detaching"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 170
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 171
    const-string v13, "simulate attaching"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    # getter for: Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 173
    :cond_9
    const-string v13, "com.android.internal.telephony.TestConferenceEventPackage"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 174
    const-string v13, "inject simulated conference event package"

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v14, "filename"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v13, v0, v14}, Lcom/android/internal/telephony/TelephonyTester;->access$200(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive: unknown action="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
