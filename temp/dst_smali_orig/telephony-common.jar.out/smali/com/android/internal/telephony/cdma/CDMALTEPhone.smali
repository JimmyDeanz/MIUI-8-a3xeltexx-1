.class public Lcom/android/internal/telephony/cdma/CDMALTEPhone;
.super Lcom/android/internal/telephony/cdma/CDMAPhone;
.source "CDMALTEPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_LTE_TAG:Ljava/lang/String; = "CDMALTEPhone"


# instance fields
.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mRuimRecords:Lcom/android/internal/telephony/uicc/RuimRecords;

.field private mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    const-string v0, "CDMAPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CDMALTEPhone: constructor: sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    return-void
.end method

.method private setProperties()V
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    const-string v4, "ro.cdma.home.operator.alpha"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "operatorAlpha":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string v4, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v4

    const-string v5, "gsm.sim.state"

    const-string v6, "ABSENT"

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "simState":Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "46003"

    .end local v2    # "simState":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update icc_operator_numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, ""

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update mccmnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v0, "CDMALTEPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .local v1, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-nez v4, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataConnectionState apnType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_NwCdmaCsfb"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_1

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataConnectionState: Data is Out of Service. ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (CallState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .local v0, "isOtherPhoneCalling":Z
    const-string v4, "dsds"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMultiSimConfig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "tsts"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMultiSimConfig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    const/4 v2, 0x0

    .local v2, "simSlot":I
    :goto_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v4

    if-eq v2, v4, :cond_6

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v3

    .local v3, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    .end local v2    # "simSlot":I
    .end local v3    # "subId":[I
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .restart local v2    # "simSlot":I
    :catch_0
    move-exception v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "simSlot":I
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    :cond_7
    if-nez v0, :cond_8

    const-string v4, "default"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->needBlockData()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid2()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .local v0, "line1number":Ljava/lang/String;
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimMsisdn()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCdmaSubscriptionSource:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string v3, "ro.cdma.home.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const-string v4, "CDMAPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOperatorNumeric: Cannot retrieve operatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mIccRecords = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "CDMAPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOperatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " operatorNumeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCdmaSubscriptionSource:I

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .restart local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .local v0, "csim":Lcom/android/internal/telephony/uicc/RuimRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "csim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->checkIsSprintSimCard()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .local v0, "gsmUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "gsmUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_0
    return-object v1

    .restart local v0    # "gsmUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .end local v0    # "gsmUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    const-string v1, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mRuimRecords:Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mRuimRecords:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSI_M()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v1, ""

    goto :goto_0
.end method

.method public getSubscriberIdDm(I)Ljava/lang/String;
    .locals 7
    .param p1, "networkType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eq p1, v6, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .local v0, "UiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v0, :cond_0

    const-string v4, "CDMAPhone"

    const-string v5, "cdmaUiccApp is Null. "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .local v1, "mCdmaRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_0

    .end local v0    # "UiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "mCdmaRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .restart local v0    # "UiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v0, :cond_3

    const-string v4, "CDMAPhone"

    const-string v5, "gsmUiccApp is Null. "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .local v2, "mGSMRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v3, ""

    goto :goto_0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    const-string v0, "CDMAPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "CDMAPhone"

    const-string v1, "Event EVENT_SIM_RECORDS_LOADED Received"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1b

    invoke-static {p1, v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    new-instance v2, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    new-instance v2, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x8

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x5

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v3, 0x13

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x19

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1a

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {p0, p0, v2, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "CDMAPhone"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "inEcm":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsPhoneInEcmState:Z

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsPhoneInEcmState:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->setProperties()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->getInstance()Lcom/itsoninc/android/ItsOnOemApi;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v2, p1}, Lcom/itsoninc/android/ItsOnOemApi;->initTelephony(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method protected initSstIcc()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .local v3, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v0, 0x0

    .local v0, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .end local v0    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .restart local v0    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    :cond_2
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v4, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    const/4 v1, 0x0

    .local v1, "newRuimRecords":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .end local v1    # "newRuimRecords":Lcom/android/internal/telephony/uicc/RuimRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .restart local v1    # "newRuimRecords":Lcom/android/internal/telephony/uicc/RuimRecords;
    :cond_4
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mRuimRecords:Lcom/android/internal/telephony/uicc/RuimRecords;

    if-nez v4, :cond_a

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mRuimRecords:Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v1    # "newRuimRecords":Lcom/android/internal/telephony/uicc/RuimRecords;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    const/4 v2, 0x0

    .local v2, "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .end local v2    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    check-cast v2, Lcom/android/internal/telephony/uicc/SIMRecords;

    .restart local v2    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_6
    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4, p0, v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_9
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onUpdateIccAvailability()V

    goto :goto_0

    .end local v2    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    .restart local v1    # "newRuimRecords":Lcom/android/internal/telephony/uicc/RuimRecords;
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mRuimRecords:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mRuimRecords:Lcom/android/internal/telephony/uicc/RuimRecords;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mRuimRecords:Lcom/android/internal/telephony/uicc/RuimRecords;

    goto :goto_1
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public removeReferences()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    return-void
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabledFlag(Z)Z

    move-result v0

    return v0
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 14

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v9

    int-to-long v2, v9

    .local v2, "currentDds":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .local v6, "operatorNumeric":Ljava/lang/String;
    const/4 v9, 0x7

    invoke-static {v9}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "gsm.sim.operator.numeric"

    const-string v10, ""

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-string v9, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v6, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const-string v9, "gsm.sim.operator.numeric"

    const-string v10, ""

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string v9, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v9

    const-string v10, "ril.ICC_TYPE"

    const-string v11, "0"

    invoke-static {v9, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cardType":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v9

    const-string v10, "gsm.sim.cdmaoperator.numeric"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "cdmaOperator":Ljava/lang/String;
    const-string v9, "3"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "4"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_4
    const-string v9, "46003"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "45502"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    move-object v6, v1

    .end local v0    # "cardType":Ljava/lang/String;
    .end local v1    # "cdmaOperator":Ljava/lang/String;
    :cond_6
    const-string v9, "CDMAPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCurrentCarrierInProvider: mSubscription = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " currentDds = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " operatorNumeric = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getSubId()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v10, v2

    if-eqz v9, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    if-le v9, v8, :cond_9

    :cond_7
    const/4 v7, 0x0

    .local v7, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    if-le v9, v8, :cond_8

    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "current"

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v11

    int-to-long v12, v11

    invoke-static {v10, v12, v13}, Landroid/telephony/TelephonyManager;->appendId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .local v5, "map":Landroid/content/ContentValues;
    const-string v9, "numeric"

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .end local v5    # "map":Landroid/content/ContentValues;
    .end local v7    # "uri":Landroid/net/Uri;
    :goto_1
    return v8

    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_8
    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "current"

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Landroid/database/SQLException;
    const-string v8, "CDMAPhone"

    const-string v9, "Can\'t store current operator"

    invoke-static {v8, v9, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Landroid/database/SQLException;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_9
    const/4 v8, 0x0

    goto :goto_1
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mPhoneId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "updateCurrentCarrierInProvider APP_FAM_3GPP == null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    move-result v0

    .local v0, "retVal":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentCarrierInProvider X retVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    return v0

    .end local v0    # "retVal":Z
    :cond_0
    const-string v1, "updateCurrentCarrierInProvider not updated"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .restart local v0    # "retVal":Z
    goto :goto_0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    return-void
.end method
