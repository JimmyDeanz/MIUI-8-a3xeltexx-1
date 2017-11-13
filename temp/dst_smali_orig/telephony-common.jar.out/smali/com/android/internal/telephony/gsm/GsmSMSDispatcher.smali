.class public final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;
    }
.end annotation


# static fields
.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static SMSC_ADDRESS_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GsmSMSDispatcher"

.field private static final VDBG:Z = false

.field private static final hexDigitChars:Ljava/lang/String; = "0123456789abcdef"


# instance fields
.field private mDomainPrefObserver:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;

.field private mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x15

    sput v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;
    .param p4, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x10

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v0, "GsmSMSDispatcher"

    const-string v1, "GsmSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsShowHiddenMenuSmsPrefmode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDomainPrefObserver:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDomainPrefObserver:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->register()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSCADialingNumberFromRil(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "smsc_string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "toa":I
    const/4 v1, 0x0

    .local v1, "isInternational":Z
    const-string v6, "GsmSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "smsc_string = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    const-string v6, "GsmSMSDispatcher"

    const-string v7, "smsc is null.\n"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const-string v6, "\"?(\\+?)([0-9]+)\"?,([0-9]*)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "+"

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "smsc":Ljava/lang/String;
    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    and-int/lit16 v6, v5, 0x90

    const/16 v7, 0x90

    if-ne v6, v7, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "smsc":Ljava/lang/String;
    :cond_4
    const-string v6, "GsmSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid smsc format. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSmsHeaderKTReadConfirm(I)Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    .locals 4
    .param p1, "readConfim"    # I

    .prologue
    const/4 v3, 0x1

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;-><init>()V

    .local v0, "ktReadConfirm":Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    const/16 v2, 0x44

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->id:I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x8c

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v1, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iput p1, v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    return-object v0
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v13, 0x1

    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "pduString":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v7

    .local v7, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v8

    .local v8, "tpStatus":I
    iget v4, v7, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .local v4, "messageRef":I
    const/4 v6, 0x0

    .local v6, "sendIntent":Z
    const-string v10, "GsmSMSDispatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleStatusReport deliveryPendingList.size(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v9, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v10, "GsmSMSDispatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleStatusReport tracker.mMessageRef: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " messageRef: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v10, v4, :cond_4

    const/16 v10, 0x40

    if-ge v8, v10, :cond_0

    const/16 v10, 0x20

    if-ge v8, v10, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    :cond_1
    iget-object v3, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "fillIn":Landroid/content/Intent;
    const-string v10, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v10, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    invoke-static {v1, v10}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const/4 v6, 0x1

    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v9    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SmsCml"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v4    # "messageRef":I
    .end local v6    # "sendIntent":Z
    .end local v8    # "tpStatus":I
    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x0

    invoke-interface {v10, v13, v13, v11}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void

    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "messageRef":I
    .restart local v6    # "sendIntent":Z
    .restart local v8    # "tpStatus":I
    .restart local v9    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v9    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getPendingDeliveryIntent()Landroid/app/PendingIntent;

    move-result-object v10

    if-eqz v10, :cond_3

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getPendingDeliveryIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .restart local v3    # "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .restart local v1    # "fillIn":Landroid/content/Intent;
    const-string v10, "GsmSMSDispatcher"

    const-string v11, "handleStatusReport send intent for network switching"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v10, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->initPendingDeliveryIntent()V

    goto :goto_2

    .restart local v1    # "fillIn":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v10

    goto :goto_3

    .restart local v9    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method private onUpdateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .local v1, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_3

    const-string v2, "GsmSMSDispatcher"

    const-string v3, "Removing stale icc objects."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_0

    const-string v2, "GsmSMSDispatcher"

    const-string v3, "New Uicc application found"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0xe

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setSCADialingNumberToRil(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x81

    .local v1, "toa":I
    :try_start_0
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/lit8 v1, v1, 0x10

    :goto_0
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    if-gt v3, v4, :cond_1

    :cond_0
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_3

    :cond_1
    move-object p0, v2

    .end local p0    # "addr":Ljava/lang/String;
    :goto_1
    return-object p0

    .restart local p0    # "addr":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v2

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z
    .param p3, "isEms"    # Z

    .prologue
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public clearDuplicatedCbMessages()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->clearDuplicatedCbMessages()V

    return-void
.end method

.method protected dispatchSmsServiceCenter(Ljava/lang/String;)V
    .locals 7
    .param p1, "smsc_string"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .local v1, "ret":[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSCADialingNumberFromRil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "smsc":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v3, "NotSet"

    aput-object v3, v1, v6

    :goto_0
    const-string v3, "GsmSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smsc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.provider.Telephony.GET_SMSC"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "smsc"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v3, "android.provider.Telephony.GET_SMSC"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    aput-object v2, v1, v6

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsDeviceReady(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "3gpp"

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
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p6, :cond_1

    if-eqz p6, :cond_0

    :try_start_0
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .local v19, "intent":Landroid/content/Intent;
    const-string v5, "LastSentMsg"

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v7, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v19    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v18    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz p7, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, p4

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, p4

    iget v12, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v10, p5

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .local v20, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    if-nez p8, :cond_3

    const/4 v14, 0x1

    :goto_3
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

    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v5

    goto :goto_1

    .end local v6    # "map":Ljava/util/HashMap;
    .end local v20    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .restart local v6    # "map":Ljava/util/HashMap;
    .restart local v20    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    .end local v6    # "map":Ljava/util/HashMap;
    :cond_4
    const-string v5, "GsmSMSDispatcher"

    const-string v7, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getSmscNumber([BZ)Ljava/lang/String;
    .locals 14
    .param p1, "a"    # [B
    .param p2, "garbage_value"    # Z

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    sget v11, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .local v2, "extra":I
    const/4 v8, 0x0

    .local v8, "smsc_length":I
    const/4 v4, 0x0

    .local v4, "international":Z
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    if-nez v11, :cond_0

    const-string v6, "NotSet"

    .local v6, "smsc":Ljava/lang/String;
    move-object v7, v6

    .end local v6    # "smsc":Ljava/lang/String;
    .local v7, "smsc":Ljava/lang/String;
    :goto_0
    return-object v7

    .end local v7    # "smsc":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x1

    aget-byte v11, p1, v11

    const/16 v12, -0x6f

    if-ne v11, v12, :cond_1

    const-string v11, "+"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/16 v11, 0xa

    new-array v9, v11, [B

    .local v9, "temp2":[B
    const/4 v11, 0x0

    array-length v12, p1

    add-int/lit8 v12, v12, -0x2

    invoke-static {p1, v2, v9, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v1, 0x0

    .local v1, "cx":I
    :goto_1
    array-length v11, v9

    if-ge v1, v11, :cond_3

    aget-byte v11, v9, v1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget-byte v11, v9, v1

    and-int/lit16 v11, v11, 0xff

    div-int/lit8 v3, v11, 0x10

    .local v3, "hn":I
    aget-byte v11, v9, v1

    and-int/lit8 v5, v11, 0xf

    .local v5, "ln":I
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v3    # "hn":I
    .end local v5    # "ln":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "temp_smsc":Ljava/lang/String;
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v8, v11, 0x2

    if-eqz v4, :cond_5

    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "smsc":Ljava/lang/String;
    const-string v11, "GsmSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "international even smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz p2, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_4
    const-string v11, "GsmSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .end local v6    # "smsc":Ljava/lang/String;
    .restart local v7    # "smsc":Ljava/lang/String;
    goto/16 :goto_0

    .end local v7    # "smsc":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "smsc":Ljava/lang/String;
    goto :goto_3
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    const-string v0, "GsmSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmSMSDispatcher: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->onUpdateIccAvailability()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
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
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

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

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v22    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v21

    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v21    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz p6, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v9

    .local v9, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v9, :cond_3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v10, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v10 .. v19}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v24

    .local v24, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v20

    .local v20, "carrierPackage":Ljava/lang/String;
    if-eqz v20, :cond_2

    const-string v4, "GsmSMSDispatcher"

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

    goto :goto_0

    .end local v9    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v23    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    .end local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v9    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v11    # "map":Ljava/util/HashMap;
    .restart local v20    # "carrierPackage":Ljava/lang/String;
    .restart local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const-string v4, "GsmSMSDispatcher"

    const-string v5, "No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string v4, "GsmSMSDispatcher"

    const-string v5, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 25
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "origPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .local v22, "intent":Landroid/content/Intent;
    const-string v3, "LastSentMsg"

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p6, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v22    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v21

    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v21    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz p7, :cond_2

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v9

    .local v9, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v9, :cond_4

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;II[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v10, p0

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v10 .. v19}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v24

    .local v24, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v20

    .local v20, "carrierPackage":Ljava/lang/String;
    if-eqz v20, :cond_3

    const-string v3, "GsmSMSDispatcher"

    const-string v4, "Found carrier package."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .local v23, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    goto :goto_0

    .end local v9    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v23    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    .end local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .restart local v9    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v11    # "map":Ljava/util/HashMap;
    .restart local v20    # "carrierPackage":Ljava/lang/String;
    .restart local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string v3, "GsmSMSDispatcher"

    const-string v4, "No carrier package."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v24    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    const-string v3, "GsmSMSDispatcher"

    const-string v4, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public sendDomainChangeSms(B)V
    .locals 2
    .param p1, "type"    # B

    .prologue
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "DomainChangeSMS is not supported in GsmSmsDispatcher"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 31
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
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
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v20

    .local v20, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v29, v0

    .local v29, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v27

    .local v27, "msgCount":I
    const/4 v9, 0x0

    .local v9, "encoding":I
    move/from16 v0, v27

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v25, v0

    .local v25, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v24

    .local v24, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_1

    if-eqz v9, :cond_0

    const/4 v4, 0x1

    if-ne v9, v4, :cond_1

    :cond_0
    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    :cond_1
    aput-object v24, v25, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .end local v24    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v27

    invoke-direct {v15, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .local v15, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v16, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .local v16, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    new-instance v23, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v23, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v29

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v4, v26, 0x1

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v4, 0x1

    move-object/from16 v0, v23

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v18, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v18, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    aget-object v4, v25, v26

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    aget-object v4, v25, v26

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_3
    const/4 v12, 0x0

    .local v12, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v26

    if-le v4, v0, :cond_4

    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .restart local v12    # "sentIntent":Landroid/app/PendingIntent;
    :cond_4
    const/4 v13, 0x0

    .local v13, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v26

    if-le v4, v0, :cond_5

    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .restart local v13    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v13, :cond_6

    const/4 v7, 0x1

    :goto_2
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v28

    .local v28, "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v28, :cond_7

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v22}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v30

    .local v30, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .end local v11    # "map":Ljava/util/HashMap;
    .end local v30    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .end local v28    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .restart local v28    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_7
    const-string v4, "GsmSMSDispatcher"

    const-string v5, "GsmSMSDispatcher.sendMultipartText(): getSubmitPdu() returned null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v12    # "sentIntent":Landroid/app/PendingIntent;
    .end local v13    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v18    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v23    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v28    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_8
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIII)V
    .locals 32
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
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
    const-string v4, "GsmSMSDispatcher"

    const-string v6, "sendMultipartTextwithOptions"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    move-object/from16 p2, v0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v23

    .local v23, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v27, v0

    .local v27, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .local v25, "msgCount":I
    const/16 v21, 0x0

    .local v21, "encoding":I
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v22, v0

    .local v22, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v20

    .local v20, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v21

    if-eq v0, v4, :cond_2

    if-eqz v21, :cond_1

    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_2

    :cond_1
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v21, v0

    :cond_2
    aput-object v20, v22, v24

    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .end local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    new-instance v31, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .local v31, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v17, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .local v17, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    new-instance v18, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v18, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v4, v24, 0x1

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v29, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v29 .. v29}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v29, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_4

    aget-object v4, v22, v24

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v29

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    aget-object v4, v22, v24

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v29

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_4
    const/16 v28, 0x0

    .local v28, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_5

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v28, Landroid/app/PendingIntent;

    .restart local v28    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    const/16 v19, 0x0

    .local v19, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_6

    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v19, Landroid/app/PendingIntent;

    .restart local v19    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v19, :cond_7

    const/4 v7, 0x1

    :goto_2
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    const/4 v4, 0x3

    move/from16 v0, v21

    if-ne v0, v4, :cond_8

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, v29

    iget v13, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v29

    iget v14, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v4 .. v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v26

    .local v26, "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .local v5, "map":Ljava/util/HashMap;
    const-string v4, "GsmSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "callingPkg"

    move-object/from16 v0, p7

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-ge v4, v6, :cond_9

    const/4 v13, 0x1

    :goto_4
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, v28

    move-object/from16 v7, v19

    move-object/from16 v9, v31

    move-object/from16 v10, v17

    move-object/from16 v11, p6

    move-object/from16 v12, v29

    move-object/from16 v14, v23

    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v30

    .local v30, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .end local v5    # "map":Ljava/util/HashMap;
    .end local v26    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v30    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_8
    move/from16 v12, p11

    goto/16 :goto_3

    .restart local v5    # "map":Ljava/util/HashMap;
    .restart local v26    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .end local v5    # "map":Ljava/util/HashMap;
    .end local v18    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v19    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v26    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v28    # "sentIntent":Landroid/app/PendingIntent;
    .end local v29    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_a
    return-void
.end method

.method protected sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_OTAUsimRegistration"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "GsmSMSDispatcher"

    const-string v6, "sendOTADomestic: feature turn off"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v4, "GsmSMSDispatcher"

    const-string v6, "sendOTADomestic"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    move-object/from16 p2, v0

    :cond_1
    const/4 v14, 0x1

    .local v14, "curIndex":I
    const/16 v16, 0x1

    .local v16, "totalCnt":I
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v15

    .local v15, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .local v5, "map":Ljava/util/HashMap;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v17

    .local v17, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v6, "com.android.phone"

    iput-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "destination"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "destinationAddress":Ljava/lang/String;
    invoke-virtual {p0, v0, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "LastSentMsg"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v5, "pdu"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v4, v5

    check-cast v4, [B

    .local v4, "pdu":[B
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v5, :cond_1

    const-string v5, "GsmSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSms:  mRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMessageRef="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SS="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v5, v4, v9

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_1

    aget-byte v5, v4, v9

    or-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    :cond_1
    const-string v5, "GsmSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSms:  isIms()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mImsRetry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMessageRef="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SS="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    .local v9, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNotInServiceError(I)I

    move-result v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "smsc"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v8, v0

    check-cast v8, [B

    .local v8, "smsc":[B
    const-string v0, "pdu"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v7, v0

    check-cast v7, [B

    .local v7, "pdu":[B
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, "reply":Landroid/os/Message;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SelectSmsSendingRouteInTelephony"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v0, :cond_1

    aget-byte v0, v7, v2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    aget-byte v0, v7, v2

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v0, v0

    aput-byte v0, v7, v3

    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v0, :cond_4

    aget-byte v0, v7, v2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    aget-byte v0, v7, v2

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v0, v0

    aput-byte v0, v7, v3

    :cond_4
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto/16 :goto_0
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 28
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

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p4, :cond_0

    :try_start_0
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .local v20, "intent":Landroid/content/Intent;
    const-string v6, "LastSentMsg"

    const/4 v8, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v8, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v20    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v19

    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v19    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_RIL_SmsAddressSeparator"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    if-eqz p5, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v22

    .local v22, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v7

    .local v7, "map":Ljava/util/HashMap;
    const-string v6, "GsmSMSDispatcher"

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

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "callingPkg"

    move-object/from16 v0, p7

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v6, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p3

    move/from16 v15, p8

    invoke-virtual/range {v6 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v27

    .local v27, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v17

    .local v17, "carrierPackage":Ljava/lang/String;
    if-eqz v17, :cond_3

    const-string v6, "GsmSMSDispatcher"

    const-string v8, "Found carrier package."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .local v24, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    goto/16 :goto_0

    .end local v7    # "map":Ljava/util/HashMap;
    .end local v17    # "carrierPackage":Ljava/lang/String;
    .end local v22    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v24    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v27    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/16 v23, 0x0

    .local v23, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const/16 v18, 0x1

    .local v18, "curIndex":I
    const/16 v26, 0x1

    .local v26, "totalCnt":I
    new-instance v21, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .local v21, "korAddr":Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    move-object/from16 p1, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    goto/16 :goto_1

    .end local v18    # "curIndex":I
    .end local v21    # "korAddr":Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
    .end local v23    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v26    # "totalCnt":I
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_2

    .restart local v7    # "map":Ljava/util/HashMap;
    .restart local v17    # "carrierPackage":Ljava/lang/String;
    .restart local v22    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v27    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string v6, "GsmSMSDispatcher"

    const-string v8, "No carrier package."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .local v16, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .local v25, "time":Ljava/lang/Long;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v2, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v7    # "map":Ljava/util/HashMap;
    .end local v16    # "calendar":Ljava/util/Calendar;
    .end local v17    # "carrierPackage":Ljava/lang/String;
    .end local v25    # "time":Ljava/lang/Long;
    .end local v27    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    const-string v6, "GsmSMSDispatcher"

    const-string v8, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I

    .prologue
    if-eqz p5, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    .local v10, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    :cond_0
    if-eqz v10, :cond_2

    invoke-virtual {p0, p1, p2, p3, v10}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v1

    .local v1, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v11

    .local v11, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .end local v1    # "map":Ljava/util/HashMap;
    .end local v11    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    .end local v10    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v10    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v0, "GsmSMSDispatcher"

    const-string v2, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendTextNSRI(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 22
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "msgCount"    # I
    .param p7, "msgTotal"    # I

    .prologue
    const-string v4, "GsmSMSDispatcher"

    const-string v5, "[NSRI_SMS_SEND] sendTextNSRI "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "strText":Ljava/lang/String;
    :try_start_0
    new-instance v20, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    array-length v5, v0

    const-string v7, "ISO8859_1"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4, v5, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "strText":Ljava/lang/String;
    .local v20, "strText":Ljava/lang/String;
    move-object/from16 v6, v20

    .end local v20    # "strText":Ljava/lang/String;
    .restart local v6    # "strText":Ljava/lang/String;
    :goto_0
    const-string v4, "GsmSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NSRI_SMS_SEND] : bytesToHexString="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v6, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v17

    .local v17, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-eqz p5, :cond_0

    const/4 v7, 0x1

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v19

    .local v19, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v8

    .local v8, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move/from16 v0, p6

    move/from16 v1, p7

    if-ge v0, v1, :cond_1

    const/4 v13, 0x1

    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v7 .. v16}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .local v21, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v8    # "map":Ljava/util/HashMap;
    .end local v17    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v19    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/Exception;
    const-string v4, "GsmSMSDispatcher"

    const-string v5, "dispatchMessage EUC_KR converting error"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v17    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .restart local v8    # "map":Ljava/util/HashMap;
    .restart local v19    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v13, 0x0

    goto :goto_2
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIIII)V
    .locals 30
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
    const-string v6, "GsmSMSDispatcher"

    const-string v8, "sendTextwithOptions "

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x0

    .local v25, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const/16 v18, 0x1

    .local v18, "curIndex":I
    const/16 v28, 0x1

    .local v28, "totalCnt":I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p4, :cond_0

    :try_start_0
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .local v21, "intent":Landroid/content/Intent;
    const-string v6, "LastSentMsg"

    const/4 v8, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v8, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v21    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v20

    .local v20, "e":Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v20    # "e":Ljava/lang/Exception;
    :cond_0
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    move-object/from16 p2, v0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_RIL_SmsAddressSeparator"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v19

    .local v19, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v25, :cond_6

    if-eqz p5, :cond_5

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v6 .. v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v24

    .local v24, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :goto_3
    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v7

    .local v7, "map":Ljava/util/HashMap;
    const-string v6, "GsmSMSDispatcher"

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

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "callingPkg"

    move-object/from16 v0, p7

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    const/4 v12, 0x1

    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v29

    .local v29, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v17

    .local v17, "carrierPackage":Ljava/lang/String;
    if-eqz v17, :cond_9

    const-string v6, "GsmSMSDispatcher"

    const-string v8, "Found carrier package."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .local v26, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v6, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    goto/16 :goto_0

    .end local v7    # "map":Ljava/util/HashMap;
    .end local v17    # "carrierPackage":Ljava/lang/String;
    .end local v19    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v24    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v26    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v29    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    new-instance v22, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .local v22, "korAddr":Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_RIL_SmsReadConfirm"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    :goto_5
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    move-object/from16 p1, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    move/from16 v28, v0

    goto/16 :goto_1

    :cond_4
    if-ltz p12, :cond_3

    const/16 v23, 0x0

    .local v23, "ktReadConfirm":Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    move-object/from16 v0, p0

    move/from16 v1, p12

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsHeaderKTReadConfirm(I)Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    move-result-object v23

    new-instance v25, Lcom/android/internal/telephony/SmsHeader;

    .end local v25    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .restart local v25    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    goto :goto_5

    .end local v22    # "korAddr":Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
    .end local v23    # "ktReadConfirm":Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    .restart local v19    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_6
    if-eqz p5, :cond_7

    const/4 v9, 0x1

    :goto_6
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v10

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v6 .. v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v24

    .restart local v24    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    goto/16 :goto_3

    .end local v24    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_7
    const/4 v9, 0x0

    goto :goto_6

    .restart local v7    # "map":Ljava/util/HashMap;
    .restart local v24    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .restart local v17    # "carrierPackage":Ljava/lang/String;
    .restart local v29    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_9
    const-string v6, "GsmSMSDispatcher"

    const-string v8, "No carrier package."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .local v16, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .local v27, "time":Ljava/lang/Long;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v2, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v7    # "map":Ljava/util/HashMap;
    .end local v16    # "calendar":Ljava/util/Calendar;
    .end local v17    # "carrierPackage":Ljava/lang/String;
    .end local v27    # "time":Ljava/lang/Long;
    .end local v29    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_a
    const-string v6, "GsmSMSDispatcher"

    const-string v8, "GsmSMSDispatcher.sendTextwithOptions(): getSubmitPdu() returned null"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
