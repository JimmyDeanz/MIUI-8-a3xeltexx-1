.class public Lcom/samsung/android/telephony/SecSmsManager;
.super Ljava/lang/Object;
.source "SecSmsManager.java"


# static fields
.field private static final CMAS_GET_CMAS_ALERT_HANDLING:Ljava/lang/String; = "getCmasAlertHandling"

.field private static final CMAS_GET_CMAS_CATEGORY:Ljava/lang/String; = "getCmasCategory"

.field private static final CMAS_GET_CMAS_CERTAINTY:Ljava/lang/String; = "getCmasCertainty"

.field private static final CMAS_GET_CMAS_MESSAGE_ID:Ljava/lang/String; = "getCmasMessageID"

.field private static final CMAS_GET_CMAS_MSG_EXPIRES:Ljava/lang/String; = "getCmasMsgExpires"

.field private static final CMAS_GET_CMAS_RECORDTYPE_FIRST_EXISTS:Ljava/lang/String; = "getCmasRecordTypeFirstExists"

.field private static final CMAS_GET_CMAS_RECORDTYPE_SECOND_EXISTS:Ljava/lang/String; = "getCmasRecordTypeSecondExists"

.field private static final CMAS_GET_CMAS_RESPONSE_TYPE:Ljava/lang/String; = "getCmasResponseType"

.field private static final CMAS_GET_CMAS_SEVERITY:Ljava/lang/String; = "getCmasSeverity"

.field private static final CMAS_GET_CMAS_URGENCY:Ljava/lang/String; = "getCmasUrgency"

.field private static final CMAS_GET_LANGUAGE_CODE:Ljava/lang/String; = "getLanguageCode"

.field private static final CMAS_GET_MESSAGE_BODY:Ljava/lang/String; = "getMessageBody"

.field private static final CMAS_GET_MESSAGE_FORMAT:Ljava/lang/String; = "getMessageFormat"

.field private static final CMAS_GET_SERIAL_NUMBER:Ljava/lang/String; = "getSerialNumber"

.field private static final CMAS_GET_SERVICE_CATEGORY:Ljava/lang/String; = "getServiceCategory"

.field private static final DEFAULT_SUB_ID:I = -0x3ea

.field static final LOG_TAG:Ljava/lang/String; = "SecSmsManager"

.field private static final PHONE_TYPE_CDMA:I = 0x2

.field private static final SMS_GET_CALLBACK_NUMBER:Ljava/lang/String; = "getCallbackNumber"

.field private static final SMS_GET_DEST_PORT:Ljava/lang/String; = "getDestPortAddr"

.field private static final SMS_GET_LINK_URL:Ljava/lang/String; = "getlinkUrl"

.field private static final SMS_GET_MESSAGE_PRIORITY:Ljava/lang/String; = "getMessagePriority"

.field private static final SMS_GET_READ_CONFIRM_ID:Ljava/lang/String; = "sgetDestPortAddr"

.field private static final SMS_GET_SAFE_MESSAGE_INDICATION:Ljava/lang/String; = "getSafeMessageIndication"

.field private static final SMS_GET_SHARED_APP_ID:Ljava/lang/String; = "getSharedAppId"

.field private static final SMS_GET_SHARED_CMD:Ljava/lang/String; = "getSharedCmd"

.field private static final SMS_GET_SHARED_PAYLOAD:Ljava/lang/String; = "getSharedPayLoad"

.field private static final SMS_GET_TELESERVICE_ID:Ljava/lang/String; = "getTeleserviceId"

.field private static final sInstance:Lcom/samsung/android/telephony/SecSmsManager;


# instance fields
.field private mSubId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Lcom/samsung/android/telephony/SecSmsManager;

    const-wide/16 v2, -0x3ea

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/telephony/SecSmsManager;-><init>(J)V

    sput-object v0, Lcom/samsung/android/telephony/SecSmsManager;->sInstance:Lcom/samsung/android/telephony/SecSmsManager;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/telephony/SecSmsManager;->mSubId:J

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 2
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "SecSmsManager.calculateLength"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static getCmasMessageValue(Landroid/telephony/SmsCbMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cbmsg"    # Landroid/telephony/SmsCbMessage;
    .param p1, "apiName"    # Ljava/lang/String;

    .prologue
    const-string v0, "SecSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecSmsManager.getCmasMessageValue : API = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "SecSmsManager"

    const-string v1, "NOT Supported API. Need to add API"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NOT Supported API"

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "getLanguageCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "getMessageBody"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "getMessageFormat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "getSerialNumber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "getServiceCategory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "getCmasMessageID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "getCmasCertainty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "getCmasUrgency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "getCmasSeverity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "getCmasResponseType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v1, "getCmasCategory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v1, "getCmasAlertHandling"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "getCmasMsgExpires"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "getCmasRecordTypeFirstExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "getCmasRecordTypeSecondExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasMessageID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasCertainty()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasUrgency()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasSeverity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasResponseType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasCategory()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasAlertHandling()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasMsgExpires()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasRecordTypeFirstExists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasRecordTypeSecondExists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x760e8710 -> :sswitch_5
        -0x73eb2fcb -> :sswitch_6
        -0x68304f5b -> :sswitch_c
        -0x6518af11 -> :sswitch_b
        -0x5d890ba9 -> :sswitch_7
        -0x5a3c66ed -> :sswitch_1
        -0x51457071 -> :sswitch_d
        -0x1bc42425 -> :sswitch_0
        -0xe8b8250 -> :sswitch_a
        0x30bf349d -> :sswitch_4
        0x3a0c69ed -> :sswitch_e
        0x3f2726cd -> :sswitch_9
        0x468ed3af -> :sswitch_8
        0x4a1b3f28 -> :sswitch_2
        0x65f110d3 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getDefault()Lcom/samsung/android/telephony/SecSmsManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/telephony/SecSmsManager;->sInstance:Lcom/samsung/android/telephony/SecSmsManager;

    return-object v0
.end method

.method public static getSmsApplicationName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    if-nez p1, :cond_0

    const-string v1, "SecSmsManager"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    .local v0, "smsdata":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v0, :cond_1

    const-string v1, "SecSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsApplicationName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSmsManagerForSubscriber(J)Landroid/telephony/SmsManager;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "SecSmsManager.getSmsManagerForSubscriber"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriber(J)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSmsMessage([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "SecSmsManager.getSmsMessage"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static getSmsMessageValue(Landroid/telephony/SmsMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Landroid/telephony/SmsMessage;
    .param p1, "apiName"    # Ljava/lang/String;

    .prologue
    const-string v0, "SecSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecSmsManager.getSmsMessageValue : API = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "SecSmsManager"

    const-string v1, "NOT Supported API. Need to add API"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NOT Supported API"

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "getCallbackNumber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "getlinkUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "getSharedAppId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "getSharedPayLoad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "getSharedCmd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "getTeleserviceId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "getMessagePriority"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "getSafeMessageIndication"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "getDestPortAddr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "sgetDestPortAddr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getlinkUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedPayLoad()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedCmd()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getTeleserviceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSafeMessageIndication()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDestPortAddr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getReadConfirmId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6faba189 -> :sswitch_9
        -0x68709500 -> :sswitch_7
        -0x5ed7c821 -> :sswitch_4
        -0x3171476b -> :sswitch_6
        -0x1add7901 -> :sswitch_1
        -0x820df7f -> :sswitch_2
        -0x491170 -> :sswitch_5
        0x3bcdb34a -> :sswitch_8
        0x3c87ace4 -> :sswitch_0
        0x7cfe31d3 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getTextEncoding(Ljava/lang/CharSequence;ZIII)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I
    .param p3, "maxEmailLen"    # I
    .param p4, "phoneType"    # I

    .prologue
    const/4 v4, 0x2

    const-string v2, "SecSmsManager"

    const-string v3, "SecSmsManager.getTextEncoding"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p4, v4, :cond_0

    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x6

    new-array v0, v2, [I

    .local v0, "ret":[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v2, v0, v4

    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    const/4 v2, 0x4

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    aput v3, v0, v2

    const/4 v2, 0x5

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    aput v3, v0, v2

    return-object v0

    .end local v0    # "ret":[I
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "setDefautApplication"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "Address"    # Ljava/lang/String;
    .param p4, "SmsType"    # I
    .param p5, "date"    # Ljava/lang/String;

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "MakeSimPdu"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "divideMessage"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "divideMessage with encoding type"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCbSettings()[B
    .locals 2

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "getCbSettings"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCbSettingsFromSIM()[B

    move-result-object v0

    return-object v0
.end method

.method public getSMSPAvailable()Z
    .locals 2

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "getSMSPAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v0

    return v0
.end method

.method public getSmsc()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "getSmsc"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getSmsc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "originationPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const-string v0, "SecSmsManager"

    const-string v1, "SecSmsManager.sendDataMessage"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 8
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
    const-string v0, "SecSmsManager"

    const-string v1, "SecSmsManager.sendMultipartTextMessage with priority"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "replyPath"    # Z
    .param p7, "expiry"    # I
    .param p8, "serviceType"    # I
    .param p9, "encodingType"    # I
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
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "SecSmsManager"

    const-string v1, "SecSmsManager.sendMultipartTextMessage with encodingType"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V

    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIII)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "replyPath"    # Z
    .param p7, "expiry"    # I
    .param p8, "serviceType"    # I
    .param p9, "encodingType"    # I
    .param p10, "confirmId"    # I
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
            ">;ZIIII)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "SecSmsManager"

    const-string v1, "SecSmsManager.sendMultipartTextMessage with encoding type, confirmID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIII)V

    return-void
.end method

.method public sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "NoOfOccur"    # I
    .param p3, "Category"    # I
    .param p4, "Language"    # I
    .param p5, "categoryResult"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "SecSmsManager"

    const-string v1, "SecSmsManager.sendscptResultMessage"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
