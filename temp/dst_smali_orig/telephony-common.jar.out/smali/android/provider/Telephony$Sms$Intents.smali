.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field public static final ACTION_KT_TWO_PHONE_MANAGE_SMS_RECEIVED:Ljava/lang/String; = "com.kt.menu.action.TWO_CALL_REG_CHANGED"

.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_RECEIVED"

.field public static final CB_SETTINGS_AVAILABLE_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.CB_SETTINGS_AVAILABLE"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_READY_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_READY"

.field public static final DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final EXTRA_LMS_TOKEN_CTC:Ljava/lang/String; = "lms_token_ctc"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final GET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_CB_ERR_RECEIVED"

.field public static final GET_SMSC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.GET_SMSC"

.field public static final IMEI_TRACKER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

.field public static final LGU_APM_RECEIVED_ACTION:Ljava/lang/String; = "android.lgt.action.APM_SMS_RECEIVED"

.field public static final LGU_FOTA_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.PUSH_CONFIRM"

.field public static final LMS_FIRST_DISPLAY_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_FIRST_DISPLAY_TIMEOUT_CTC"

.field public static final LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

.field public static final MMS_DOWNLOADED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOADED"

.field public static final NSRISMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.SECURITY_SMS_RECEIVED"

.field public static final RESULT_SMS_DSAC_FAIL:I = 0x7

.field public static final RESULT_SMS_DUPLICATE:I = 0x8

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_MDM_DISCARDED:I = 0xa

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_SEGMENT:I = 0x9

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SET_CB_ERR_RECEIVED"

.field public static final SHOW_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CARRIER_PROVISION_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CARRIER_PROVISION"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_CB_RECEIVED_WIFI_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_DM_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field public static final WAP_PUSH_DS_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineFourBytes([B[BI)Ljava/lang/String;
    .locals 8
    .param p0, "firstbyte"    # [B
    .param p1, "lastbyte"    # [B
    .param p2, "startBodyOffset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "Telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineFourBytes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p0, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p0, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " offset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, "ret":Ljava/lang/String;
    const/4 v3, 0x4

    new-array v1, v3, [B

    .local v1, "fourBytes":[B
    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    const/4 v3, 0x2

    aget-byte v4, p0, p2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "ret":Ljava/lang/String;
    const-string v3, "utf-16"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "ret":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .restart local v2    # "ret":Ljava/lang/String;
    const-string v3, "Telephony"

    const-string v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 31
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v28, "pdus"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v28

    check-cast v28, [Ljava/lang/Object;

    move-object/from16 v10, v28

    check-cast v10, [Ljava/lang/Object;

    .local v10, "messages":[Ljava/lang/Object;
    const-string v28, "format"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "format":Ljava/lang/String;
    const-string v28, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .local v24, "subId":I
    const-string v28, "Telephony"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " getMessagesFromIntent sub_id : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v10

    move/from16 v19, v0

    .local v19, "pduCount":I
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .local v21, "shiftBytes":[B
    const/4 v6, 0x0

    .local v6, "isShiftBytes":Z
    const/16 v22, 0x0

    .local v22, "startBodyOffset":I
    move/from16 v0, v19

    new-array v12, v0, [Landroid/telephony/SmsMessage;

    .local v12, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v5, v0, :cond_e

    aget-object v28, v10, v5

    check-cast v28, [B

    move-object/from16 v18, v28

    check-cast v18, [B

    .local v18, "pdu":[B
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_3

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v28

    aput-object v28, v12, v5

    if-eqz v6, :cond_0

    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$Sms$Intents;->combineFourBytes([B[BI)Ljava/lang/String;

    move-result-object v23

    .local v23, "str":Ljava/lang/String;
    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    .local v9, "messageBody":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    const/4 v6, 0x0

    .end local v9    # "messageBody":Ljava/lang/String;
    .end local v23    # "str":Ljava/lang/String;
    :cond_0
    aget-object v28, v12, v5

    if-eqz v28, :cond_1

    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/SmsMessageBase;->getIsFourBytesUnicode()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    const-string v28, "Telephony"

    const-string v29, "Detect multibyte unicode at the end of page"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/SmsMessageBase;->getLastByte()[B

    move-result-object v8

    .local v8, "lastbyte":[B
    const/16 v28, 0x0

    const/16 v29, 0x0

    aget-byte v29, v8, v29

    aput-byte v29, v21, v28

    const/16 v28, 0x1

    const/16 v29, 0x1

    aget-byte v29, v8, v29

    aput-byte v29, v21, v28

    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/SmsMessageBase;->getBodyOffset()I

    move-result v22

    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "messageBody":Ljava/lang/String;
    const-string v28, "Telephony"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "messageBody Length : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    const/4 v6, 0x1

    .end local v8    # "lastbyte":[B
    .end local v9    # "messageBody":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getCDMASmsReassembly()Z

    move-result v28

    if-eqz v28, :cond_3

    const/16 v28, 0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-le v0, v1, :cond_3

    const/16 v17, 0x0

    .local v17, "paginationSuccess":Z
    const/16 v16, 0x0

    .local v16, "pagination":Ljava/lang/String;
    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v25

    .local v25, "tempMessageBody":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "modifiedMessageBody":Ljava/lang/String;
    const-string v28, "("

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    const-string v28, ")"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_5

    const/16 v28, 0x28

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    const/16 v29, 0x29

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v28, 0x29

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    add-int/lit8 v28, v28, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    :goto_1
    if-eqz v16, :cond_8

    move-object/from16 v11, v25

    const-string v28, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, "page":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    const/16 v17, 0x1

    :cond_2
    :goto_2
    if-nez v17, :cond_d

    const-string v28, "Telephony"

    const-string v29, "No pagination found"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "modifiedMessageBody":Ljava/lang/String;
    .end local v14    # "page":[Ljava/lang/String;
    .end local v16    # "pagination":Ljava/lang/String;
    .end local v17    # "paginationSuccess":Z
    .end local v25    # "tempMessageBody":Ljava/lang/String;
    :cond_3
    :goto_3
    aget-object v28, v12, v5

    if-eqz v28, :cond_4

    aget-object v28, v12, v5

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/telephony/SmsMessage;->setSubId(I)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .restart local v11    # "modifiedMessageBody":Ljava/lang/String;
    .restart local v16    # "pagination":Ljava/lang/String;
    .restart local v17    # "paginationSuccess":Z
    .restart local v25    # "tempMessageBody":Ljava/lang/String;
    :cond_5
    const-string v28, "["

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    const-string v28, "]"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_6

    const/16 v28, 0x5b

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    const/16 v29, 0x5d

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v28, 0x5d

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    add-int/lit8 v28, v28, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    :cond_6
    const-string v28, "{"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    const-string v28, "}"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v28, 0x7b

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    const/16 v29, 0x7d

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v28, 0x7d

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    add-int/lit8 v28, v28, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    :cond_7
    const-string v28, "Telephony"

    const-string v29, "there is no pagination pattern maybe / or of "

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string v28, " of "

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "page":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_9

    const-string v28, " "

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .local v15, "pageCount":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_9

    const/16 v28, 0x0

    aget-object v28, v15, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x2

    aget-object v29, v15, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    add-int v28, v28, v29

    add-int/lit8 v13, v28, 0x4

    .local v13, "offset":I
    add-int/lit8 v28, v13, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x1

    .end local v13    # "offset":I
    .end local v15    # "pageCount":[Ljava/lang/String;
    :cond_9
    if-nez v17, :cond_2

    const-string v28, "/"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .local v26, "tempPage":[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_2

    const/16 v28, 0x1

    aget-object v28, v26, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    .local v27, "totalNumber":[C
    const/16 v28, 0x0

    aget-object v28, v26, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toCharArray()[C

    move-result-object v20

    .local v20, "segmentNumber":[C
    const/4 v3, 0x0

    .local v3, "firstPartNumeric":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    aget-char v28, v20, v7

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->isDigit(C)Z

    move-result v28

    if-eqz v28, :cond_a

    const/16 v28, 0x0

    aget-object v28, v26, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ge v7, v0, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    const/16 v28, 0x0

    aget-object v28, v26, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_b

    const/4 v3, 0x1

    :cond_b
    const/4 v7, 0x0

    if-eqz v3, :cond_2

    :goto_5
    aget-char v28, v27, v7

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->isDigit(C)Z

    move-result v28

    if-eqz v28, :cond_c

    const/16 v28, 0x1

    aget-object v28, v26, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ge v7, v0, :cond_c

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    const/16 v28, 0x0

    aget-object v28, v26, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int v28, v28, v7

    add-int/lit8 v28, v28, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x1

    goto/16 :goto_2

    .end local v3    # "firstPartNumeric":Z
    .end local v7    # "j":I
    .end local v20    # "segmentNumber":[C
    .end local v26    # "tempPage":[Ljava/lang/String;
    .end local v27    # "totalNumber":[C
    :cond_d
    aget-object v28, v12, v5

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v11    # "modifiedMessageBody":Ljava/lang/String;
    .end local v14    # "page":[Ljava/lang/String;
    .end local v16    # "pagination":Ljava/lang/String;
    .end local v17    # "paginationSuccess":Z
    .end local v18    # "pdu":[B
    .end local v25    # "tempMessageBody":Ljava/lang/String;
    :cond_e
    return-object v12
.end method
