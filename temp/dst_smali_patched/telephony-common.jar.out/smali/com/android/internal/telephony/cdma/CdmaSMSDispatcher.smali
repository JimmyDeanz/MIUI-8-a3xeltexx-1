.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final CTC_AUTOLOGIN_WAITING_ACTION:Ljava/lang/String; = "android.intent.action.WAITING_AUTO_LOGIN"

.field private static final TAG:Ljava/lang/String; = "CdmaSMSDispatcher"

.field private static final VDBG:Z


# instance fields
.field private mCTCAutoLoginWaitingActionReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private misDAN:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->misDAN:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCTCAutoLoginWaitingActionReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCTCAutoLoginWaitingActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.WAITING_AUTO_LOGIN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsDisposed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendAutoLoginSmsResponse()V

    return-void
.end method

.method private sendAutoLoginSmsResponse()V
    .locals 6

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x25

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "sendAutoLoginSmsResponse() invokeRilRequestRaw"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendAutoLoginSms() error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z
    .param p3, "isEms"    # Z

    .prologue
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForEms(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected checkEcmPolicy(ZLjava/lang/String;)Z
    .locals 9
    .param p1, "outgoing"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .local v3, "result":Z
    const/4 v2, 0x0

    .local v2, "ltecall":Z
    const/4 v0, 0x0

    .local v0, "ecm":Z
    const/4 v1, 0x0

    .local v1, "ine911":Z
    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "lte"

    const-string v6, "ril.cdma.lastcallrat"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "ril.cdma.ine911"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkEcmPolicy ltecall : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ine911 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ecm : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v8, :cond_0

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mDcnAddress:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "This is DCN number"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    if-ne v1, v8, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v8, :cond_2

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SprEcmIncomingSms"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p1, :cond_4

    const/4 v3, 0x0

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public clearDuplicatedCbMessages()V
    .locals 2

    .prologue
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "Error! clearDuplicatedCbMessages is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected dispatchSmsServiceCenter(Ljava/lang/String;)V
    .locals 2
    .param p1, "smsc_hexstring"    # Ljava/lang/String;

    .prologue
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "dispatchSmsServiceCenter function is not applicable for CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCTCAutoLoginWaitingActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "3gpp2"

    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 21
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;

    .prologue
    new-instance v20, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v20, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_RIL_SegmentedSms"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    :cond_0
    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_5

    const-string v5, "CHN"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->salesCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "HKTW"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->salesCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v5, 0x2

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz p7, :cond_7

    if-eqz p8, :cond_7

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v18

    .local v18, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .local v6, "map":Ljava/util/HashMap;
    const/16 v19, 0x0

    .local v19, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v5, "CHN"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->salesCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "HKTW"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->salesCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    if-nez p8, :cond_8

    const/4 v14, 0x1

    :goto_2
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v19

    :goto_3
    return-object v19

    .end local v6    # "map":Ljava/util/HashMap;
    .end local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_RIL_SegmentedSms"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x9

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x4

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x10

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    .restart local v6    # "map":Ljava/util/HashMap;
    .restart local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v19

    goto :goto_3
.end method

.method handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 9
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v4, 0x0

    .local v4, "sendIntent":Z
    const-string v6, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCdmaStatusReport deliveryPendingList.size(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v5, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v6, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCdmaStatusReport tracker.mMessageRef: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sms.mMessageRef: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    iget-object v3, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "fillIn":Landroid/content/Intent;
    const-string v6, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v6, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-static {v1, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const/4 v4, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SmsCml"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    :goto_2
    return-void

    .restart local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getPendingDeliveryIntent()Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getPendingDeliveryIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .restart local v3    # "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .restart local v1    # "fillIn":Landroid/content/Intent;
    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "handleCdmaStatusReport send intent for network switching"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v6, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->initPendingDeliveryIntent()V

    goto :goto_2

    .restart local v1    # "fillIn":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v6

    goto :goto_3

    .restart local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    :goto_0
    return-void

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const-string v0, "CdmaSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport() called for object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called only on ImsSMSDispatcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 25
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    if-eqz p6, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v9

    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v9, :cond_3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v10, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v10 .. v19}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v24

    .local v24, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v20

    .local v20, "carrierPackage":Ljava/lang/String;
    if-eqz v20, :cond_2

    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .local v23, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v23    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    .end local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v11    # "map":Ljava/util/HashMap;
    .restart local v20    # "carrierPackage":Ljava/lang/String;
    .restart local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "CdmaSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_0

    :try_start_0
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .local v22, "intent":Landroid/content/Intent;
    const-string v4, "LastSentMsg"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v22    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v21

    .local v21, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "Intent has been canceled!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 21
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "origPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    if-eqz p7, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v9

    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v10, p0

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v10 .. v19}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v20

    .local v20, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public sendDomainChangeSms(B)V
    .locals 13
    .param p1, "type"    # B

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v11, "0000"

    .local v11, "testAddr":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getDcnAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mDcnAddress:Ljava/lang/String;

    :goto_0
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ABSENT"

    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CdmaSMSDispatcher"

    const-string v2, "uicc is absent"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "CdmaSMSDispatcher"

    const-string v3, "mImsSMSDispatcher is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_SmsCml"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mDcnAddress:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mDcnAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDomainChangeNotification(BLjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v10

    .local v10, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mDcnAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v2, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v1

    .local v1, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v12

    .local v12, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .end local v1    # "map":Ljava/util/HashMap;
    .end local v10    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v12    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_SupportQualcommIms"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "persist.EarthquakeTestmode"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CdmaSMSDispatcher"

    const-string v2, "sendDomainChangeSms testmode ON => DAN blocked"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    const-string v0, "CdmaSMSDispatcher"

    const-string v2, "sendDomainChangeSms: Now in call => DAN blocked"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->misDAN:Z

    const-string v0, "08059980000"

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mDcnAddress:Ljava/lang/String;

    goto :goto_2
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 26
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
    const-string v4, "CdmaSMSDispatcher"

    const-string v8, "sendMultipartText "

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v14

    .local v14, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    .local v22, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .local v21, "msgCount":I
    const/16 v19, 0x0

    .local v19, "encoding":I
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .local v9, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v10, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .local v10, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    const-string v4, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-static {v4, v8, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForEms(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v18

    .local v18, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_1
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_2

    if-eqz v19, :cond_1

    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_2

    :cond_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v19, v0

    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .end local v18    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-static {v4, v8, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v18

    .restart local v18    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_1

    .end local v18    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    new-instance v17, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v17, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v4, 0x1

    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v12, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v12, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v6, 0x0

    .local v6, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-le v4, v0, :cond_5

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    const/4 v7, 0x0

    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-le v4, v0, :cond_6

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .restart local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    new-instance v25, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v25, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v8, "CscFeature_RIL_SegmentedSms"

    invoke-virtual {v4, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, v25

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_b

    const-string v4, "CHN"

    sget-object v8, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->salesCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "HKTW"

    sget-object v8, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->salesCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v7, :cond_c

    add-int/lit8 v4, v21, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_c

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v23

    .local v23, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v23, :cond_d

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .local v5, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v24

    .local v24, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .end local v5    # "map":Ljava/util/HashMap;
    .end local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .end local v23    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v8, "CscFeature_RIL_SegmentedSms"

    invoke-virtual {v4, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v4, 0x9

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_3

    :cond_a
    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_3

    :cond_b
    const/4 v4, 0x4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_3

    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    .restart local v23    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_d
    const-string v4, "CdmaSMSDispatcher"

    const-string v8, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v12    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v17    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v23    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v25    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_e
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIII)V
    .locals 24
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
    const-string v4, "CdmaSMSDispatcher"

    const-string v8, "sendMultipartTextwithOptions "

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    .local v19, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .local v18, "msgCount":I
    const/16 v16, 0x0

    .local v16, "encoding":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v4, v8, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v15

    .local v15, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v4, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v16

    if-eq v0, v4, :cond_1

    if-eqz v16, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_1

    :cond_0
    iget v0, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v16, v0

    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .end local v15    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v14, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v19

    iput v0, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v4, v17, 0x1

    iput v4, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v18

    iput v0, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v20, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v20, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v20

    iput-object v14, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v6, 0x0

    .local v6, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-le v4, v0, :cond_3

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    :cond_3
    const/4 v7, 0x0

    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-le v4, v0, :cond_4

    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .restart local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_4
    new-instance v23, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v23, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_7

    const-string v4, "CHN"

    sget-object v8, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->salesCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "HKTW"

    sget-object v8, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->salesCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const/4 v4, 0x2

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, v23

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v7, :cond_8

    add-int/lit8 v4, v18, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_8

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v21

    .local v21, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .local v5, "map":Ljava/util/HashMap;
    const-string v4, "CdmaSMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found Package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "callingPkg"

    move-object/from16 v0, p7

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v4, p0

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v22

    .local v22, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .end local v5    # "map":Ljava/util/HashMap;
    .end local v21    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v22    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_6
    const/16 v4, 0x9

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    :cond_7
    const/4 v4, 0x4

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v14    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v20    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v23    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_9
    return-void
.end method

.method protected sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "Error! sendOTADomestic is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "pdu"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .local v1, "pdu":[B
    const-string v2, "CdmaSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSms:  isIms()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRetryCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mImsRetry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMessageRef="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .local v4, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNotInServiceError(I)I

    move-result v6

    invoke-virtual {p1, v5, v6, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, "reply":Landroid/os/Message;
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string v6, "pdu"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .local v2, "pdu":[B
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pdu : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .local v0, "currentDataNetwork":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_1

    const/16 v5, 0xd

    if-ne v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_2

    const/4 v1, 0x1

    .local v1, "imsSmsDisabled":Z
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SelectSmsSendingRouteInTelephony"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSmsMore([BLandroid/os/Message;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto/16 :goto_0

    :cond_4
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    if-eqz v1, :cond_8

    :cond_6
    iget-boolean v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSmsMore([BLandroid/os/Message;)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v5, v2, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto/16 :goto_0
.end method

.method sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 1
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsCml"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    :goto_2
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportQualcommIms"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->misDAN:Z

    if-eqz v0, :cond_3

    const-string v0, "persist.radio.dan_sms"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->misDAN:Z

    goto :goto_0

    :cond_3
    const-string v0, "persist.radio.dan_sms"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 35
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z

    .prologue
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    new-instance v28, Landroid/content/Intent;

    invoke-direct/range {v28 .. v28}, Landroid/content/Intent;-><init>()V

    .local v28, "intent":Landroid/content/Intent;
    const-string v6, "LastSentMsg"

    const/4 v7, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p4, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v7, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v28    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v26

    .local v26, "e":Ljava/lang/Exception;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v26    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v25, 0x1

    .local v25, "curIndex":I
    const/16 v33, 0x1

    .local v33, "totalCnt":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SmsAddressSeparator"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p5, :cond_4

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v6, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v30

    .local v30, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :goto_2
    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v13

    .local v13, "map":Ljava/util/HashMap;
    const-string v6, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found Package : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "callingPkg"

    move-object/from16 v0, p7

    invoke-virtual {v13, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v12, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v17, p6

    move-object/from16 v19, p3

    move/from16 v21, p8

    invoke-virtual/range {v12 .. v21}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v34

    .local v34, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v24

    .local v24, "carrierPackage":Ljava/lang/String;
    if-eqz v24, :cond_5

    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "Found carrier package."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v31, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .local v31, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v6, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .end local v31    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    .local v23, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .local v32, "time":Ljava/lang/Long;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v2, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v13    # "map":Ljava/util/HashMap;
    .end local v23    # "calendar":Ljava/util/Calendar;
    .end local v24    # "carrierPackage":Ljava/lang/String;
    .end local v30    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v32    # "time":Ljava/lang/Long;
    .end local v34    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const/16 v22, 0x0

    .local v22, "TID":I
    const/4 v11, 0x0

    .local v11, "senderAddr":Ljava/lang/String;
    new-instance v29, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .local v29, "korAddr":Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    move-object/from16 p1, v0

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTID:I

    move/from16 v22, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    move/from16 v25, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    move/from16 v33, v0

    if-eqz p5, :cond_3

    const/4 v9, 0x1

    :goto_4
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-static/range {v6 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v30

    .restart local v30    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    goto/16 :goto_2

    .end local v30    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_3
    const/4 v9, 0x0

    goto :goto_4

    .end local v11    # "senderAddr":Ljava/lang/String;
    .end local v22    # "TID":I
    .end local v29    # "korAddr":Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_1

    .restart local v13    # "map":Ljava/util/HashMap;
    .restart local v24    # "carrierPackage":Ljava/lang/String;
    .restart local v30    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v34    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "No carrier package."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_3

    .end local v13    # "map":Ljava/util/HashMap;
    .end local v24    # "carrierPackage":Ljava/lang/String;
    .end local v34    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_6
    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    :try_start_1
    new-instance v28, Landroid/content/Intent;

    invoke-direct/range {v28 .. v28}, Landroid/content/Intent;-><init>()V

    .restart local v28    # "intent":Landroid/content/Intent;
    const-string v6, "LastSentMsg"

    const/4 v7, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v7, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v28    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v27

    .local v27, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "Intent has been canceled!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 22
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I

    .prologue
    const-string v6, "CdmaSMSDispatcher"

    const-string v8, "sendText "

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p4, :cond_0

    :try_start_0
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .local v18, "intent":Landroid/content/Intent;
    const-string v6, "LastSentMsg"

    const/4 v8, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v8, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v18    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v17    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz p5, :cond_1

    const/4 v9, 0x1

    :goto_1
    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v6 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v19

    .local v19, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v7

    .local v7, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v6 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .local v21, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .local v16, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .local v20, "time":Ljava/lang/Long;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v2, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v7    # "map":Ljava/util/HashMap;
    .end local v16    # "calendar":Ljava/util/Calendar;
    .end local v19    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v20    # "time":Ljava/lang/Long;
    .end local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method protected sendTextNSRI(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "msgCount"    # I
    .param p7, "msgTotal"    # I

    .prologue
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "Error! sendTextNSRI is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIIII)V
    .locals 34
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
    const/16 v24, 0x1

    .local v24, "curIndex":I
    const/16 v32, 0x1

    .local v32, "totalCnt":I
    const-string v6, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendTextwithOptions destAddr : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p12, :cond_1

    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "sendTextwithOptions: confirmId is a special GSM function, should never be called in CDMA!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .local v27, "intent":Landroid/content/Intent;
    const-string v6, "LastSentMsg"

    const/4 v7, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p4, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v7, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v27    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v25

    .local v25, "e":Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v25    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SmsAddressSeparator"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p5, :cond_8

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v6, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v29

    .local v29, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :goto_2
    if-eqz v29, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v13

    .local v13, "map":Ljava/util/HashMap;
    const-string v6, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found Package : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "callingPkg"

    move-object/from16 v0, p7

    invoke-virtual {v13, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v12, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v17, p6

    move-object/from16 v19, p3

    invoke-virtual/range {v12 .. v21}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v33

    .local v33, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v23

    .local v23, "carrierPackage":Ljava/lang/String;
    if-eqz v23, :cond_9

    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "Found carrier package."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v30, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .local v30, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v6, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .end local v30    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    .local v22, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    .local v31, "time":Ljava/lang/Long;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v2, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v13    # "map":Ljava/util/HashMap;
    .end local v22    # "calendar":Ljava/util/Calendar;
    .end local v23    # "carrierPackage":Ljava/lang/String;
    .end local v29    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v31    # "time":Ljava/lang/Long;
    .end local v33    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    new-instance v28, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .local v28, "korAddr":Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
    const/4 v11, 0x0

    .local v11, "senderAddr":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    move-object/from16 p1, v0

    move-object/from16 v0, v28

    iget-object v11, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    move/from16 v24, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    move/from16 v32, v0

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    if-eqz p5, :cond_5

    const/4 v6, 0x1

    :goto_4
    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v6, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v29

    .restart local v29    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    goto/16 :goto_2

    .end local v29    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    if-eqz p5, :cond_7

    const/4 v9, 0x1

    :goto_5
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-static/range {v6 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v29

    .restart local v29    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    goto/16 :goto_2

    .end local v29    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .end local v11    # "senderAddr":Ljava/lang/String;
    .end local v28    # "korAddr":Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .restart local v13    # "map":Ljava/util/HashMap;
    .restart local v23    # "carrierPackage":Ljava/lang/String;
    .restart local v29    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v33    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_9
    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "No carrier package."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_3

    .end local v13    # "map":Ljava/util/HashMap;
    .end local v23    # "carrierPackage":Ljava/lang/String;
    .end local v33    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_a
    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    :try_start_1
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .restart local v27    # "intent":Landroid/content/Intent;
    const-string v6, "LastSentMsg"

    const/4 v7, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v7, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v27    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v26

    .local v26, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "Intent has been canceled!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
