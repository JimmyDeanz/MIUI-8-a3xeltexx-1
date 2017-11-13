.class public final Lcom/android/internal/telephony/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSMSDispatcher.java"


# static fields
.field private static final AT_CMD_PERMISSION:Ljava/lang/String; = "com.sec.android.phone.permission.AT_COMMAND"

.field private static final DAN_DELAY_TIMER:I = 0x3a98

.field private static final DAN_RETRY_TIMER:I = 0x3e8

.field private static final EVENT_DCN_TIMER_START:I = 0x7d0

.field private static final EVENT_DCN_TIMER_STOP:I = 0x7d1

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.radio.ims.reg"

.field private static final PROPERTY_SVLTE_SUPPORT:Ljava/lang/String; = "ro.ril.svlte1x"

.field public static final SMS_STATUS_1X:I = 0x3

.field public static final SMS_STATUS_3GPP:I = 0x4

.field public static final SMS_STATUS_IMS:I = 0x2

.field public static final SMS_STATUS_INVALID:I = 0x0

.field public static final SMS_STATUS_NO_SMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RIL_ImsSms"

.field public static final mFormatUri:Landroid/net/Uri;

.field private static mLimitedMode:Z


# instance fields
.field private mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private mDCNMessageTimer:Z

.field private mDCNPendingTimer:Z

.field private mDCNRetryCount:I

.field private mDanFail:Z

.field private mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mIms:Z

.field private mImsSmsFormat:Ljava/lang/String;

.field private mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mLimitedMode:Z

    const-string v0, "content://com.example.HiddenMenuContentProvider/IMSSETTINGSData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mFormatUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p3, v6}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    const-string v2, "unknown"

    iput-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDanFail:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNMessageTimer:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNPendingTimer:Z

    iput v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNRetryCount:I

    iput-object v6, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "RIL_ImsSms"

    const-string v3, "ImsSMSDispatcher created"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {v2, p1, p3, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-static {v3, p2, p1, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v2, p1, p3, p0, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object v5, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v0, "broadcastThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CUSTOMER_TEST_RESPONSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LTE_SMS_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.sec.android.phone.permission.AT_COMMAND"

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb

    invoke-interface {v2, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc

    invoke-interface {v2, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private isCdmaFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCdmaMo()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "RIL_ImsSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[lteStatus] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mLteSmsStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->useLte3GPPSms()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-eq v5, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SmsCml"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/LegacyIms;->isHybridVolte()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "volte"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->hasCall(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "RIL_ImsSms"

    const-string v3, "hybrid lte should send 3gpp2 sms over 1xrtt during cs call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-eq v5, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportQualcommIms"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v5, v1, :cond_6

    const-string v1, "RIL_ImsSms"

    const-string v2, "isCdmaMo: Now in call => isCdmaMo is true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public static isLimitedMode()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mLimitedMode:Z

    return v0
.end method

.method private setImsSmsFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "3gpp"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "3gpp2"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v6, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .local v0, "responseArray":[I
    iput-boolean v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    aget v2, v0, v4

    if-ne v2, v5, :cond_3

    const-string v2, "RIL_ImsSms"

    const-string v3, "IMS is registered!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    sput-boolean v4, Lcom/android/internal/telephony/ImsSMSDispatcher;->mLimitedMode:Z

    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportQualcommIms"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "persist.radio.ims.reg"

    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    if-eqz v2, :cond_5

    const-string v2, "true"

    :goto_1
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    aget v2, v0, v5

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;->setImsSmsFormat(I)V

    const-string v2, "unknown"

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "RIL_ImsSms"

    const-string v3, "IMS format was unknown!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SmsCml"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_2
    :goto_2
    return-void

    :cond_3
    aget v2, v0, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const-string v2, "RIL_ImsSms"

    const-string v3, "IMS is registered! but limited mode"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/android/internal/telephony/ImsSMSDispatcher;->mLimitedMode:Z

    goto :goto_0

    :cond_4
    const-string v2, "RIL_ImsSms"

    const-string v3, "IMS is NOT registered!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/internal/telephony/ImsSMSDispatcher;->mLimitedMode:Z

    goto :goto_0

    :cond_5
    const-string v2, "false"

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportQualcommIms"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .local v1, "ss":I
    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNMessageTimer:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_7
    iput-boolean v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNMessageTimer:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNPendingTimer:Z

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ImsSMSDispatcher;->removeMessages(I)V

    goto :goto_2
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z
    .param p3, "isEms"    # Z

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public clearDuplicatedCbMessages()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->clearDuplicatedCbMessages()V

    return-void
.end method

.method protected dispatchSmsServiceCenter(Ljava/lang/String;)V
    .locals 1
    .param p1, "smsc_hexstring"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchSmsServiceCenter(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchSmsServiceCenter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispose()V

    return-void
.end method

.method public getDanFail()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDanFail:Z

    return v0
.end method

.method public getDcnAddress()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v6, 0x2b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "5.0"

    const-string v2, "5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "6.0"

    const-string v2, "5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const/4 v14, 0x0

    .local v14, "resultMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "dcnAddress":Ljava/lang/String;
    new-array v13, v5, [I

    aput v6, v13, v4

    .local v13, "reqFields":[I
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1, v13}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v14

    if-eqz v14, :cond_2

    const/16 v1, 0x2b

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    const-string v1, "RIL_ImsSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Domain Change Address : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .end local v10    # "dcnAddress":Ljava/lang/String;
    .end local v13    # "reqFields":[I
    .end local v14    # "resultMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v7

    .restart local v10    # "dcnAddress":Ljava/lang/String;
    .restart local v13    # "reqFields":[I
    .restart local v14    # "resultMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_2
    const-string v7, "4437501000"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    .local v12, "ex":Ljava/lang/Exception;
    const-string v1, "RIL_ImsSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrive DCN address exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "4437501000"

    goto :goto_0

    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_3
    const-string v1, "RIL_ImsSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInterfaceForGeneral is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "4437501000"

    goto :goto_0

    .end local v10    # "dcnAddress":Ljava/lang/String;
    .end local v13    # "reqFields":[I
    .end local v14    # "resultMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_4
    const/4 v8, 0x0

    .local v8, "c":Landroid/database/Cursor;
    new-array v3, v5, [Ljava/lang/String;

    const-string v1, "mDcnNumber"

    aput-object v1, v3, v4

    .local v3, "reqField":[Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/ImsSMSDispatcher;->mFormatUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .local v9, "count":I
    if-lez v9, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "RIL_ImsSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Domain Change Address : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .local v7, "address":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "address":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v1, "RIL_ImsSms"

    const-string v2, "Cursor < 1"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "4437501000"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9    # "count":I
    :catch_1
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "4437501000"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "getFormat should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "format"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmsc()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "getSmsc in ImsSMSDispatcher"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsc()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0x7d1

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    const-string v4, "RIL_ImsSms"

    const-string v5, "EVENT_IMS_STATE_CHANGED"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v2, v4

    check-cast v2, [I

    .local v2, "responseArray":[I
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v2    # "responseArray":[I
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_1
    const-string v4, "RIL_ImsSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS State query failed with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    const-string v4, "RIL_ImsSms"

    const-string v5, "EVENT_DCN_TIMER expired"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    .local v3, "ss":I
    const/4 v1, 0x0

    .local v1, "is1xVoice":Z
    if-nez v3, :cond_2

    iput-boolean v7, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNPendingTimer:Z

    const-string v4, "RIL_ImsSms"

    const-string v5, "It entered no service. Timer paused until access network!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    const/16 v4, 0x8

    if-gt v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNRetryCount:I

    if-ge v4, v8, :cond_5

    if-eqz v1, :cond_4

    const-string v4, "1"

    const-string v5, "ril.isinehrpdnetwork"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string v4, "RIL_ImsSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "It doesn\'t enter 1x status. Timer restart!count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNRetryCount:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNRetryCount:I

    if-ge v4, v8, :cond_6

    const-string v4, "RIL_ImsSms"

    const-string v5, "Sending domain change notification"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendDomainChangeSms(B)V

    :cond_6
    iput-boolean v6, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNMessageTimer:Z

    iput v6, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNRetryCount:I

    goto/16 :goto_0

    .end local v1    # "is1xVoice":Z
    .end local v3    # "ss":I
    :sswitch_3
    const-string v4, "RIL_ImsSms"

    const-string v5, "EVENT_DCN_TIMER Started"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNMessageTimer:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNPendingTimer:Z

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3a98

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_2
    .end sparse-switch
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    const-string v3, "RIL_ImsSms"

    const-string v4, "ImsSMSDispatcher:injectSmsPdu"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .local v2, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v3, v4, :cond_1

    if-eqz p3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p3, v3}, Landroid/app/PendingIntent;->send(I)V

    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_0
    :goto_0
    return-void

    .restart local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v0, p3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v3, "3gpp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "RIL_ImsSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsSMSDispatcher:injectSmsText Sending msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to mGsmInboundSmsHandler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RIL_ImsSms"

    const-string v4, "injectSmsPdu failed: "

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {p3, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    :try_start_2
    const-string v3, "3gpp2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "RIL_ImsSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsSMSDispatcher:injectSmsText Sending msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to mCdmaInboundSmsHandler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "RIL_ImsSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pdu format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p3, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public isIms()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .local v0, "ds":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .local v1, "isPsNotService":Z
    :goto_0
    const-string v3, "RIL_ImsSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " datareg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " imsreg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ATT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-eqz v1, :cond_2

    const-string v3, "RIL_ImsSms"

    const-string v4, "ps is no service"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2

    .end local v1    # "isPsNotService":Z
    :cond_1
    move v1, v2

    goto :goto_0

    .restart local v1    # "isPsNotService":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    goto :goto_1
.end method

.method public restartDanTimer()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNPendingTimer:Z

    if-eqz v1, :cond_0

    const-string v1, "RIL_ImsSms"

    const-string v2, "DAN timer restart!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDCNPendingTimer:Z

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "origPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendData"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RIL_ImsSms"

    const-string v1, "sendData is not supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendDomainChangeSms(B)V
    .locals 2
    .param p1, "type"    # B

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "RIL_ImsSms"

    const-string v1, "DomainChangeSMS is not supported in GsmSmsDispatcher"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->setDanFail(Z)Z

    goto :goto_0
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendMultipartTextwithCBP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIII)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "replyPath"    # Z
    .param p9, "expiry"    # I
    .param p10, "serviceType"    # I
    .param p11, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIII)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIII)V

    goto :goto_0
.end method

.method protected sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendOTADomestic"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendRawPduSat([B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const-string v1, "RIL_ImsSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRawPduSat: format= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sentIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deliveryIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "smsc"

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pdu"

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, p3

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v11

    .local v11, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v11, p3}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;)V

    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .local v6, "oldFormat":Ljava/lang/String;
    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v11

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    .local v5, "newFormat":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SmsCml"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "RIL_ImsSms"

    const-string v11, "old format matched new format (cdma)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :goto_2
    return-void

    .end local v5    # "newFormat":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .restart local v5    # "newFormat":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SupportQualcommIms"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "true"

    const-string v11, "persist.radio.dan_sms"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "RIL_ImsSms"

    const-string v11, "Current SMS type is 3GPP. DAN doesn\'t resend!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    :goto_3
    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    const-string v10, "RIL_ImsSms"

    const-string v11, "old format matched new format (gsm)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    :cond_6
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v4, "map":Ljava/util/HashMap;
    const-string v10, "scAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "destAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "text"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "data"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "destPort"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    :cond_7
    const-string v10, "RIL_ImsSms"

    const-string v11, "sendRetrySms failed to re-encode per missing fields!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p1, v10, v11, v12}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto/16 :goto_2

    :cond_8
    const-string v10, "scAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "scAddr":Ljava/lang/String;
    const-string v10, "destAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "destAddr":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v10, "text"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "RIL_ImsSms"

    const-string v11, "sms failed was text"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "text"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "text":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "RIL_ImsSms"

    const-string v11, "old format (gsm) ==> new format (cdma)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x0

    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .end local v9    # "text":Ljava/lang/String;
    :cond_9
    :goto_5
    const-string v10, "smsc"

    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "pdu"

    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .local v3, "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :goto_6
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_2

    .end local v3    # "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    :cond_b
    const-string v10, "RIL_ImsSms"

    const-string v11, "old format (cdma) ==> new format (gsm)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    :goto_7
    const/4 v11, 0x0

    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    goto :goto_5

    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    .end local v9    # "text":Ljava/lang/String;
    :cond_d
    const-string v10, "data"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "RIL_ImsSms"

    const-string v11, "sms failed was data"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "data"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    .local v0, "data":[B
    const-string v10, "destPort"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "destPort":Ljava/lang/Integer;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v10, "RIL_ImsSms"

    const-string v11, "old format (gsm) ==> new format (cdma)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    :goto_8
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    goto :goto_5

    :cond_e
    const/4 v10, 0x0

    goto :goto_8

    :cond_f
    const-string v10, "RIL_ImsSms"

    const-string v11, "old format (cdma) ==> new format (gsm)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    :goto_9
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    goto/16 :goto_5

    :cond_10
    const/4 v10, 0x0

    goto :goto_9

    .end local v0    # "data":[B
    .end local v2    # "destPort":Ljava/lang/Integer;
    :cond_11
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_6
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendSms should never be called from here!, so re-send SMS."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendSms with smsformat."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "3gpp2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendSmsByPstn should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendText"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendTextCBP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected sendTextNSRI(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "msgCount"    # I
    .param p7, "msgTotal"    # I

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendTextNSRI"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RIL_ImsSms"

    const-string v1, "sendTextNSRI is not supported in 3gpp2"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextNSRI(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    goto :goto_0
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIIII)V
    .locals 13
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "replyPath"    # Z
    .param p9, "expiry"    # I
    .param p10, "serviceType"    # I
    .param p11, "encodingType"    # I
    .param p12, "confirmId"    # I

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendTextwithOptions"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIIII)V

    goto :goto_0
.end method

.method public setDanFail(Z)Z
    .locals 1
    .param p1, "danFail"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDanFail:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mDanFail:Z

    return v0
.end method

.method public setSmsc(Ljava/lang/String;)V
    .locals 2
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "getSmsc in ImsSMSDispatcher"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->setSmsc(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->setSmsc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const-string v0, "RIL_ImsSms"

    const-string v1, "In IMS updatePhoneObject "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    return-void
.end method

.method public useLte3GPPSms()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mLteSmsStatus:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mLteSmsStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
