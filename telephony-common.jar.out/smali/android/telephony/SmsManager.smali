.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field public static final CELL_BROADCAST_RAN_TYPE_CDMA:I = 0x1

.field public static final CELL_BROADCAST_RAN_TYPE_GSM:I = 0x0

.field protected static final COPY_TO_SIM_FAIL:I = 0x1

.field protected static final COPY_TO_SIM_NOT_AVAILABLE:I = 0x2

.field protected static final COPY_TO_SIM_SIM_FULL:I = 0x3

.field protected static final COPY_TO_SIM_SUCCESS:I = 0x0

.field private static final DEFAULT_SUBSCRIPTION_ID:I = -0x3ea

.field private static DIALOG_TYPE_KEY:Ljava/lang/String; = null

.field public static final EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field public static final EXTRA_MMS_HTTP_STATUS:Ljava/lang/String; = "android.telephony.extra.MMS_HTTP_STATUS"

.field static final GSM_SMS_FAIL_CAUSE_DSAC_FAIL:I = 0xd6

.field public static final ICC_TYPE_AUTO:I = -0x1

.field public static final ICC_TYPE_CSIM:I = 0x4

.field public static final ICC_TYPE_CSIM_DEACTIVE:I = 0xa

.field public static final ICC_TYPE_ISIM:I = 0x5

.field public static final ICC_TYPE_RUIM:I = 0x3

.field public static final ICC_TYPE_SIM:I = 0x1

.field public static final ICC_TYPE_UNKNOW:I = 0x0

.field public static final ICC_TYPE_USIM:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SmsManager"

.field public static final MESSAGE_STATUS_READ:Ljava/lang/String; = "read"

.field public static final MESSAGE_STATUS_SEEN:Ljava/lang/String; = "seen"

.field public static final MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final MMS_CONFIG_SHOW_CELL_BROADCAST_APP_LINKS:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final MMS_CONFIG_SUPPORT_HTTP_CHARSET_HEADER:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final MMS_ERROR_INVALID_APN:I = 0x2

.field public static final MMS_ERROR_IO_ERROR:I = 0x5

.field public static final MMS_ERROR_NO_DATA_NETWORK:I = 0x8

.field public static final MMS_ERROR_RETRY:I = 0x6

.field public static final MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final MMS_ERROR_UNSPECIFIED:I = 0x1

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final RESULT_ERROR_DSAC_FAILURE:I = 0x3e8

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field private static final SMS_PICK:I = 0x2

.field public static final SMS_TYPE_INCOMING:I = 0x0

.field public static final SMS_TYPE_OUTGOING:I = 0x1

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field public static final VALUE_INPUT_MODE_AUTO:I = 0x2

.field public static final VALUE_INPUT_MODE_GSM7BIT:I = 0x0

.field public static final VALUE_INPUT_MODE_UCS2:I = 0x1

.field static mMsgEncodingType:I

.field private static final sInstance:Landroid/telephony/SmsManager;

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/telephony/SmsManager;

    const/16 v1, -0x3ea

    invoke-direct {v0, v1}, Landroid/telephony/SmsManager;-><init>(I)V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    .line 289
    const-string v0, "dialog_type"

    sput-object v0, Landroid/telephony/SmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    .line 1440
    const/4 v0, 0x0

    sput v0, Landroid/telephony/SmsManager;->mMsgEncodingType:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    iput p1, p0, Landroid/telephony/SmsManager;->mSubId:I

    .line 797
    return-void
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1226
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 1228
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1229
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1230
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1232
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1233
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1234
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 1235
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1240
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1245
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_2

    .line 1247
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1248
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1249
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1251
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_1

    .line 1252
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1253
    .local v4, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    if-nez v4, :cond_0

    .line 1255
    const-string v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFromEfRecord NULL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1259
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1263
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    :cond_2
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 757
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static getDefaultSmsSubscriptionId()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 1335
    const/4 v1, 0x0

    .line 1337
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1338
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1342
    :goto_0
    return v2

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1341
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1342
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private static getISmsService()Lcom/android/internal/telephony/ISms;
    .locals 1

    .prologue
    .line 869
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .locals 3

    .prologue
    .line 861
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 862
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-nez v0, :cond_0

    .line 863
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 865
    :cond_0
    return-object v0
.end method

.method public static getMmsConfig(Landroid/os/BaseBundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "config"    # Landroid/os/BaseBundle;

    .prologue
    .line 1947
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1948
    .local v0, "filtered":Landroid/os/Bundle;
    const-string v1, "enabledTransID"

    const-string v2, "enabledTransID"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1950
    const-string v1, "enabledMMS"

    const-string v2, "enabledMMS"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1951
    const-string v1, "enableGroupMms"

    const-string v2, "enableGroupMms"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1953
    const-string v1, "enabledNotifyWapMMSC"

    const-string v2, "enabledNotifyWapMMSC"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1955
    const-string v1, "aliasEnabled"

    const-string v2, "aliasEnabled"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1956
    const-string v1, "allowAttachAudio"

    const-string v2, "allowAttachAudio"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1958
    const-string v1, "enableMultipartSMS"

    const-string v2, "enableMultipartSMS"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1960
    const-string v1, "enableSMSDeliveryReports"

    const-string v2, "enableSMSDeliveryReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1962
    const-string v1, "supportMmsContentDisposition"

    const-string v2, "supportMmsContentDisposition"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1964
    const-string v1, "sendMultipartSmsAsSeparateMessages"

    const-string v2, "sendMultipartSmsAsSeparateMessages"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1966
    const-string v1, "enableMMSReadReports"

    const-string v2, "enableMMSReadReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1968
    const-string v1, "enableMMSDeliveryReports"

    const-string v2, "enableMMSDeliveryReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1970
    const-string v1, "maxMessageSize"

    const-string v2, "maxMessageSize"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1971
    const-string v1, "maxImageWidth"

    const-string v2, "maxImageWidth"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1972
    const-string v1, "maxImageHeight"

    const-string v2, "maxImageHeight"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1973
    const-string v1, "recipientLimit"

    const-string v2, "recipientLimit"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1974
    const-string v1, "aliasMinChars"

    const-string v2, "aliasMinChars"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1975
    const-string v1, "aliasMaxChars"

    const-string v2, "aliasMaxChars"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1976
    const-string v1, "smsToMmsTextThreshold"

    const-string v2, "smsToMmsTextThreshold"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1978
    const-string v1, "smsToMmsTextLengthThreshold"

    const-string v2, "smsToMmsTextLengthThreshold"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1980
    const-string v1, "maxMessageTextSize"

    const-string v2, "maxMessageTextSize"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1982
    const-string v1, "maxSubjectLength"

    const-string v2, "maxSubjectLength"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1984
    const-string v1, "httpSocketTimeout"

    const-string v2, "httpSocketTimeout"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1986
    const-string v1, "uaProfTagName"

    const-string v2, "uaProfTagName"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    const-string v1, "userAgent"

    const-string v2, "userAgent"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const-string v1, "uaProfUrl"

    const-string v2, "uaProfUrl"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string v1, "httpParams"

    const-string v2, "httpParams"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    const-string v1, "emailGatewayNumber"

    const-string v2, "emailGatewayNumber"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    const-string v1, "naiSuffix"

    const-string v2, "naiSuffix"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    const-string v1, "config_cellBroadcastAppLinks"

    const-string v2, "config_cellBroadcastAppLinks"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1996
    const-string v1, "supportHttpCharsetHeader"

    const-string v2, "supportHttpCharsetHeader"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1998
    return-object v0
.end method

.method public static getSmsApplicationName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2847
    if-nez p1, :cond_0

    .line 2848
    const-string v1, "SmsManager"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    .line 2851
    .local v0, "smsdata":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v0, :cond_1

    .line 2852
    const-string v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmsManager.getSmsApplicationName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    iget-object v1, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    .line 2855
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
    .line 790
    long-to-int v0, p0

    .line 791
    .local v0, "sub":I
    invoke-static {v0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v1

    return-object v1
.end method

.method public static getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 769
    sget-object v2, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 770
    :try_start_0
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;

    .line 771
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    if-nez v0, :cond_0

    .line 772
    new-instance v0, Landroid/telephony/SmsManager;

    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    invoke-direct {v0, p0}, Landroid/telephony/SmsManager;-><init>(I)V

    .line 773
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    :cond_0
    monitor-exit v2

    return-object v0

    .line 776
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessageForCarrierApp"    # Z
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
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 550
    const-string v1, "SmsManager"

    const-string v2, "sendMultipartTextMessage in SmsManager"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 559
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 560
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "toddler mode on"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 556
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :cond_3
    if-nez p3, :cond_4

    .line 564
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v4, :cond_5

    .line 567
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 568
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 571
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_6

    .line 573
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 574
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 582
    :cond_6
    const/4 v5, 0x0

    .line 583
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 584
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 585
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 587
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    :cond_7
    if-eqz p5, :cond_8

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 588
    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 590
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_8
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 578
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessageForCarrierApp"    # Z

    .prologue
    .line 339
    const-string v1, "SmsManager"

    const-string v2, "sendTextMessage in SmsManager"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 348
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "toddler mode on"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 345
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 353
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 354
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 378
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2836
    const-string v0, "SmsManager"

    const-string v1, "SmsManager.setDefautApplication"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 2838
    return-void
.end method


# virtual methods
.method public MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 9
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "Address"    # Ljava/lang/String;
    .param p4, "SmsType"    # I
    .param p5, "date"    # Ljava/lang/String;

    .prologue
    .line 2123
    const/4 v8, 0x0

    .line 2124
    .local v8, "result":I
    const-string v0, "persist.radio.cdma.msgid"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2125
    .local v6, "msgId":I
    const v0, 0xffff

    rem-int v0, v6, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2126
    .local v7, "nextMsgId":Ljava/lang/String;
    const-string v0, "persist.radio.cdma.msgid"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 2128
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I

    move-result v8

    .line 2129
    return v8
.end method

.method public MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 14
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "Address"    # Ljava/lang/String;
    .param p4, "SmsType"    # I
    .param p5, "date"    # Ljava/lang/String;
    .param p6, "messageId"    # I

    .prologue
    .line 2147
    const/4 v11, 0x0

    .line 2148
    .local v11, "result":Z
    const/4 v12, 0x0

    .local v12, "smsc":[B
    const/4 v9, 0x0

    .line 2151
    .local v9, "pdu":[B
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSMSAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2152
    const-string v1, "SmsManager"

    const-string v2, "getSimDeliverPdu : COPY_TO_SIM_NOT_AVAILABLE"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    const/4 v1, 0x2

    .line 2202
    :goto_0
    return v1

    .line 2155
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getCurrentFormat()Ljava/lang/String;

    move-result-object v6

    .line 2156
    .local v6, "format":Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_2

    .line 2158
    const/4 v5, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, p1

    move-object/from16 v4, p5

    move/from16 v7, p6

    :try_start_0
    invoke-static/range {v1 .. v7}, Landroid/telephony/SmsMessage;->getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;I)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v10

    .line 2159
    .local v10, "pdus":Landroid/telephony/SmsMessage$DeliverPdu;
    if-eqz v10, :cond_1

    .line 2160
    iget-object v12, v10, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 2161
    iget-object v9, v10, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    :cond_1
    const/4 v13, 0x1

    .line 2188
    .end local v10    # "pdus":Landroid/telephony/SmsMessage$DeliverPdu;
    .local v13, "status":I
    :goto_1
    if-nez v12, :cond_5

    if-nez v9, :cond_5

    .line 2189
    const/4 v1, 0x1

    goto :goto_0

    .line 2163
    .end local v13    # "status":I
    :catch_0
    move-exception v8

    .line 2164
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimDeliverPdu Encoding ERR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    const/4 v1, 0x1

    goto :goto_0

    .line 2171
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, p1

    move/from16 v7, p6

    :try_start_1
    invoke-static/range {v2 .. v7}, Landroid/telephony/SmsMessage;->getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;I)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 2172
    .local v10, "pdus":Landroid/telephony/SmsMessage$SubmitPdu;
    if-eqz v10, :cond_3

    .line 2173
    iget-object v12, v10, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 2174
    iget-object v9, v10, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2181
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_4

    .line 2182
    const/4 v13, 0x5

    .restart local v13    # "status":I
    goto :goto_1

    .line 2176
    .end local v10    # "pdus":Landroid/telephony/SmsMessage$SubmitPdu;
    .end local v13    # "status":I
    :catch_1
    move-exception v8

    .line 2177
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimSubmitPdu Encoding ERR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const/4 v1, 0x1

    goto :goto_0

    .line 2184
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "pdus":Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_4
    const/4 v13, 0x7

    .restart local v13    # "status":I
    goto :goto_1

    .line 2192
    .end local v10    # "pdus":Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_5
    invoke-virtual {p0, v12, v9, v13}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v11

    .line 2194
    if-eqz v11, :cond_6

    .line 2195
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->resetSimFullStatus()V

    .line 2196
    const/4 v1, 0x0

    goto :goto_0

    .line 2198
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSimFullStatus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2199
    const-string v1, "SmsManager"

    const-string v2, "getSimFullStatus: 3"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 2202
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public addMultimediaMessageDraft(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1738
    if-nez p1, :cond_0

    .line 1739
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1742
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1743
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1744
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1750
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 1747
    :catch_0
    move-exception v1

    .line 1750
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1717
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1718
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 1719
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1724
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 1721
    :catch_0
    move-exception v1

    .line 1724
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public archiveStoredConversation(JZ)Z
    .locals 3
    .param p1, "conversationId"    # J
    .param p3, "archived"    # Z

    .prologue
    .line 1694
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1695
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 1696
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1702
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 1699
    :catch_0
    move-exception v1

    .line 1702
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 7
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 887
    const/4 v6, 0x0

    .line 889
    .local v6, "success":Z
    if-nez p2, :cond_0

    .line 890
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pdu is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 893
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 894
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 895
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 903
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v6

    .line 899
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 7
    .param p1, "messageIndex"    # I

    .prologue
    .line 918
    const/4 v6, 0x0

    .line 919
    .local v6, "success":Z
    const/16 v1, 0xaf

    new-array v5, v1, [B

    .line 920
    .local v5, "pdu":[B
    const/4 v1, -0x1

    invoke-static {v5, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 923
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 924
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 933
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v6

    .line 929
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deleteStoredConversation(J)Z
    .locals 3
    .param p1, "conversationId"    # J

    .prologue
    .line 1642
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1643
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 1644
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1650
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 1647
    :catch_0
    move-exception v1

    .line 1650
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteStoredMessage(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1617
    if-nez p1, :cond_0

    .line 1618
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1621
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1622
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1623
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1628
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 1625
    :catch_0
    move-exception v1

    .line 1628
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 1
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 2878
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SmsManager;->disableCellBroadcast(II)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcast(II)Z
    .locals 3
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    .prologue
    .line 1118
    const/4 v1, 0x0

    .line 1121
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1122
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v0, v2, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastForSubscriber(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1130
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1126
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 2898
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(III)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    .prologue
    .line 1199
    const/4 v1, 0x0

    .line 1201
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 1202
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1205
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1206
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1207
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v0, v2, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1214
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 1210
    :catch_0
    move-exception v2

    goto :goto_0
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
    .line 490
    if-nez p1, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    invoke-static {p1, p0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;Landroid/telephony/SmsManager;)Ljava/util/ArrayList;

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
    .line 2099
    if-nez p1, :cond_0

    .line 2100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2103
    :cond_0
    invoke-static {p1, p2, p0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;ILandroid/telephony/SmsManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1507
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1508
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty MMS location URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1510
    :cond_0
    if-nez p3, :cond_1

    .line 1511
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1514
    :cond_1
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1515
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_2

    .line 1524
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 1518
    .restart local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1521
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enableCellBroadcast(I)Z
    .locals 1
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 2868
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SmsManager;->enableCellBroadcast(II)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 3
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    .prologue
    .line 1080
    const/4 v1, 0x0

    .line 1083
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1084
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v0, v2, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastForSubscriber(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1094
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1090
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1088
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 2888
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(III)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    .prologue
    .line 1157
    const/4 v1, 0x0

    .line 1159
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 1160
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1163
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1164
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1165
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v0, v2, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1172
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 1168
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 977
    const/4 v1, 0x0

    .line 980
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 981
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 990
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 986
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIccSimType(I)Ljava/util/ArrayList;
    .locals 14
    .param p1, "iccType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    const/4 v8, 0x0

    .line 1004
    .local v8, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    const-string v2, "3gpp"

    .line 1005
    .local v2, "format":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getCurrentFormat()Ljava/lang/String;

    move-result-object v3

    .line 1006
    .local v3, "getFormat":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v9

    .line 1007
    .local v9, "subId":I
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    .line 1010
    .local v7, "phoneId":I
    const/4 v11, -0x1

    if-eq p1, v11, :cond_0

    if-nez p1, :cond_1

    .line 1012
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v11, "ril.ICC_TYPE"

    const-string v12, ""

    invoke-static {v7, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1013
    .local v10, "type":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 1020
    .end local v10    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 1021
    const-string v11, "SmsManager"

    const-string v12, "IccType is Unknown"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-static {v8, v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1056
    :goto_1
    return-object v11

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "SmsManager"

    const-string v12, "IccType is invalid"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 p1, 0x0

    goto :goto_0

    .line 1025
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v4

    .line 1026
    .local v4, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v4, :cond_7

    .line 1027
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v11, "gsm.operator.isroaming"

    const-string v12, "false"

    invoke-static {v7, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1028
    .local v6, "isroaming":Z
    const-string v11, "CHN"

    sget-object v12, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "CHU"

    sget-object v12, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "CTC"

    sget-object v12, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "CHM"

    sget-object v12, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "CHC"

    sget-object v12, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_3
    const/4 v5, 0x1

    .line 1033
    .local v5, "isCHN":Z
    :goto_2
    const/16 v11, 0xa

    if-ne p1, v11, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    const/4 v11, 0x4

    if-ne p1, v11, :cond_6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 1034
    :cond_5
    const/4 v11, 0x1

    sput-boolean v11, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    .line 1036
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v11

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 1041
    .end local v5    # "isCHN":Z
    .end local v6    # "isroaming":Z
    :cond_7
    const/4 v11, 0x0

    sput-boolean v11, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    .line 1044
    .end local v4    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_3
    const/4 v11, 0x4

    if-ne p1, v11, :cond_a

    .line 1045
    move-object v2, v3

    .line 1053
    :cond_8
    :goto_4
    const-string v11, "SmsManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAllMessagesFromIccSimType, subId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " format = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " iccType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-static {v8, v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_1

    .line 1028
    .restart local v4    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v6    # "isroaming":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 1038
    .end local v4    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v6    # "isroaming":Z
    :catch_1
    move-exception v1

    .line 1039
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v11, "SmsManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAllMessagesFromIccSimType - exception - iccType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1041
    const/4 v11, 0x0

    sput-boolean v11, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    goto :goto_3

    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v11

    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    throw v11

    .line 1046
    :cond_a
    const/16 v11, 0xa

    if-ne p1, v11, :cond_b

    .line 1047
    const-string v11, "3gpp"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1048
    const-string v2, "3gpp2"

    goto :goto_4

    .line 1050
    :cond_b
    const/4 v11, 0x3

    if-ne p1, v11, :cond_8

    .line 1051
    const-string v2, "3gpp2"

    goto :goto_4
.end method

.method public getAutoPersisting()Z
    .locals 2

    .prologue
    .line 1909
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1910
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 1911
    invoke-interface {v0}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1916
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 1913
    :catch_0
    move-exception v1

    .line 1916
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCarrierConfigValues()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1926
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1927
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 1928
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1933
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 1930
    :catch_0
    move-exception v1

    .line 1933
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCbSettings()Landroid/telephony/gsm/CbConfig;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 2292
    const-string v9, "SmsManager"

    const-string v10, "[CB] In getCbConfig"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    const/4 v6, 0x0

    .line 2296
    .local v6, "out":[B
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 2299
    .local v0, "cbConfig":Landroid/telephony/gsm/CbConfig;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2301
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_2

    .line 2302
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v7

    .line 2303
    .local v7, "subId":I
    const-string v9, "SmsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCbSettings subId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    if-ltz v7, :cond_1

    .line 2305
    invoke-interface {v3, v7}, Lcom/android/internal/telephony/ISms;->getCbSettingsForSubscriber(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 2326
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "subId":I
    :goto_0
    if-nez v6, :cond_3

    .line 2327
    const-string v9, "SmsManager"

    const-string v10, "[CB] out is null. Return null."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 2358
    .end local v0    # "cbConfig":Landroid/telephony/gsm/CbConfig;
    :cond_0
    :goto_1
    return-object v0

    .line 2307
    .restart local v0    # "cbConfig":Landroid/telephony/gsm/CbConfig;
    .restart local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v7    # "subId":I
    :cond_1
    :try_start_1
    const-string v9, "SmsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCbSettings invalid subID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 2308
    goto :goto_1

    .line 2311
    .end local v7    # "subId":I
    :cond_2
    const-string v9, "SmsManager"

    const-string v10, "[CB] iccISms == null."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v8

    .line 2312
    goto :goto_1

    .line 2314
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 2316
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v9, "SmsManager"

    const-string v10, "[CB ] Exception In getCbConfig of SmsManager.java  "

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2317
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2319
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2320
    const-string v9, "SmsManager"

    const-string v10, "[CB ] IllegalArgumentException Exception In getCbConfig of SmsManager.java  "

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2321
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 2323
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v9, "SmsManager"

    const-string v10, "[CB ] NULL Exception In getCbConfig of SmsManager.java  "

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2331
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_3
    aget-byte v8, v6, v13

    if-ne v8, v12, :cond_4

    .line 2332
    iput-boolean v12, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 2336
    :goto_2
    aget-byte v8, v6, v12

    int-to-char v8, v8

    iput-char v8, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 2337
    const/16 v8, 0x3e8

    iput-char v8, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 2338
    const/4 v8, 0x3

    aget-byte v8, v6, v8

    iput v8, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 2340
    iget v8, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    new-array v5, v8, [S

    .line 2342
    .local v5, "msgIDs":[S
    const/4 v2, 0x4

    .local v2, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    array-length v8, v5

    if-ge v4, v8, :cond_5

    .line 2344
    aget-byte v8, v6, v2

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v5, v4

    .line 2342
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2334
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "msgIDs":[S
    :cond_4
    iput-boolean v13, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    goto :goto_2

    .line 2347
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "msgIDs":[S
    :cond_5
    iput-object v5, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 2349
    const-string v8, "SmsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SmsManger- CB] bCBEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " selectedId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-char v10, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " msgIdMaxCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-char v10, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " msgIdCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const/4 v2, 0x0

    :goto_4
    iget-object v8, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 2355
    const-string v8, "SmsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CB] msgIDs =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public getCbSettingsFromSIM()[B
    .locals 5

    .prologue
    .line 2372
    const-string v3, "SmsManager"

    const-string v4, "getCbConfig"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    const/4 v2, 0x0

    .line 2376
    .local v2, "out":[B
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2378
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2379
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getCbSettings()[B

    move-result-object v2

    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    move-object v3, v2

    .line 2392
    :goto_1
    return-object v3

    .line 2381
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v3, "SmsManager"

    const-string v4, "iccISms == null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2382
    const/4 v3, 0x0

    goto :goto_1

    .line 2384
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 2386
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "Exception In getCbConfig of SmsManager.java  "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2387
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2389
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "NULL Exception In getCbConfig of SmsManager.java  "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentFormat()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2815
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2816
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 2817
    .local v1, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v3, "gsm.current.phone-type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2818
    .local v0, "mode":Ljava/lang/String;
    const-string v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentFormat, subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2826
    const-string v3, "3gpp"

    :goto_0
    return-object v3

    .line 2822
    :pswitch_0
    const-string v3, "3gpp2"

    goto :goto_0

    .line 2824
    :pswitch_1
    const-string v3, "3gpp"

    goto :goto_0

    .line 2820
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1317
    const-string v0, "unknown"

    .line 1319
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1320
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1321
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1326
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1323
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected getSMSAvailable()Z
    .locals 5

    .prologue
    .line 2223
    const-string v3, "SmsManager"

    const-string v4, "getSMSAvailable in SmsManager"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    const/4 v2, 0x0

    .line 2226
    .local v2, "ret":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2228
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2229
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISms;->getSMSAvailableForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2235
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 2231
    :catch_0
    move-exception v0

    .line 2233
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "[CB ] Exception In getSMSAvailable() of SmsManager.java  "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSMSPAvailable()Z
    .locals 5

    .prologue
    .line 2260
    const-string v3, "SmsManager"

    const-string v4, "getSMSPAvailable in SmsManager"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    const/4 v2, 0x0

    .line 2264
    .local v2, "ret":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 2266
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2267
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2268
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSMSPAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2275
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 2270
    :catch_0
    move-exception v0

    .line 2272
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "[CB ] Exception In getSMSPAvailable() of SmsManager.java  "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getSimFullStatus()Z
    .locals 5

    .prologue
    .line 2208
    const-string v3, "SmsManager"

    const-string v4, "getSimFullStatus in SmsManager"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    const/4 v2, 0x0

    .line 2211
    .local v2, "ret":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2212
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2213
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISms;->getSimFullStatusForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2219
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 2215
    :catch_0
    move-exception v0

    .line 2217
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "Exception In getSimFullStatus() of SmsManager.java    "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSmsc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2055
    const/4 v1, 0x0

    .line 2058
    .local v1, "smsc":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2059
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 2060
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISms;->getSmscForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2065
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 2062
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSubscriptionId()I
    .locals 3

    .prologue
    .line 815
    iget v1, p0, Landroid/telephony/SmsManager;->mSubId:I

    const/16 v2, -0x3ea

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 853
    .local v0, "subId":I
    :goto_0
    return v0

    .line 815
    .end local v0    # "subId":I
    :cond_0
    iget v0, p0, Landroid/telephony/SmsManager;->mSubId:I

    goto :goto_0
.end method

.method public getToddlerMode()Z
    .locals 2

    .prologue
    .line 2077
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2078
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 2079
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->getToddlerModeForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2085
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return v1

    .line 2081
    :catch_0
    move-exception v1

    .line 2085
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public importMultimediaMessage(Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "timestampSecs"    # J
    .param p5, "seen"    # Z
    .param p6, "read"    # Z

    .prologue
    .line 1591
    if-nez p1, :cond_0

    .line 1592
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1595
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1596
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1597
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1603
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 1600
    :catch_0
    move-exception v1

    .line 1603
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public importTextMessage(Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z

    .prologue
    .line 1558
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1559
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1560
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1566
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v0

    .line 1563
    :catch_0
    move-exception v0

    .line 1566
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 448
    const-string v1, "3gpp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3gpp2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_0
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 455
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isImsSmsSupported()Z
    .locals 3

    .prologue
    .line 1277
    const/4 v0, 0x0

    .line 1279
    .local v0, "boSupported":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1280
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1281
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1286
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1283
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1353
    const/4 v1, 0x0

    .line 1355
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1356
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1360
    :goto_0
    return v2

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1359
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1360
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method protected resetSimFullStatus()V
    .locals 4

    .prologue
    .line 2240
    const-string v2, "SmsManager"

    const-string v3, "resetSimFullStatus in SmsManager"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2243
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2244
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->resetSimFullStatusForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2250
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 2246
    :catch_0
    move-exception v0

    .line 2248
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string v3, "Exception In resetSimFullStatus() of SmsManager.java  "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "originationPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2433
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2434
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2440
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2441
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "toddler mode on"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2436
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 2437
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2444
    :cond_3
    if-eqz p5, :cond_4

    array-length v1, p5

    if-nez v1, :cond_5

    .line 2445
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2449
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2450
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0xffff

    and-int v5, p3, v3

    const v3, 0xffff

    and-int v6, p4, v3

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendDatawithOrigPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2453
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 695
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 703
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 704
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "toddler mode on"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 700
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_3
    if-eqz p4, :cond_4

    array-length v1, p4

    if-nez v1, :cond_5

    .line 708
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 713
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0xffff

    and-int v5, p3, v3

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 730
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 735
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 739
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 740
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0xffff

    and-int v5, p3, v3

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1476
    if-nez p2, :cond_0

    .line 1477
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1480
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1481
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    .line 1490
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 1485
    .restart local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1487
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 544
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 10
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
    .line 615
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v1, "SmsManager"

    const-string v2, "sendMultipartTextMessage in SmsManager with options"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 625
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 626
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "toddler mode on"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 622
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :cond_3
    if-nez p3, :cond_4

    .line 630
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid parts"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 633
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_5

    .line 634
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 635
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 638
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    .line 640
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 641
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_6

    .line 642
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithCBPForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_6
    :goto_0
    return-void

    .line 649
    :cond_7
    const/4 v5, 0x0

    .line 650
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 651
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 652
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 654
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    :cond_8
    if-eqz p5, :cond_9

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 655
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 657
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    goto :goto_0

    .line 645
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 13
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
    .line 2472
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "SmsManager"

    const-string v3, "sendMultipartTextMessage in SmsManager with options"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2475
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2476
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2482
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2483
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "toddler mode on"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2478
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x100

    if-lt v2, v3, :cond_1

    .line 2479
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2486
    :cond_3
    if-nez p3, :cond_4

    .line 2487
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2489
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    .line 2490
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2491
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2494
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 2496
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2497
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithOptionsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2517
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2505
    :cond_6
    const/4 v6, 0x0

    .line 2506
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 2507
    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2508
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 2510
    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    :cond_7
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2511
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 2513
    .restart local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    goto :goto_0

    .line 2501
    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIII)V
    .locals 13
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
    .line 2534
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "SmsManager"

    const-string v3, "sendMultipartTextMessage in SmsManager with confirmId"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2537
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2538
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2544
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2545
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "toddler mode on"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2540
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x100

    if-lt v2, v3, :cond_1

    .line 2541
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2548
    :cond_3
    if-nez p3, :cond_4

    .line 2549
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2551
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    .line 2552
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2553
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2557
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 2559
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2560
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithOptionsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2581
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2568
    :cond_6
    const/4 v6, 0x0

    .line 2569
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 2570
    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2571
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 2573
    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    :cond_7
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2574
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 2576
    .restart local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V

    goto :goto_0

    .line 2564
    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendMultipartTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 607
    return-void
.end method

.method public sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 2711
    const-string v1, "SmsManager"

    const-string v2, "sendOTADomestic in SmsManager"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2714
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2715
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2721
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2722
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "toddler mode on"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2717
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 2718
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2725
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2726
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2730
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2731
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendOTADomesticForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2736
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2733
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendStoredMultimediaMessage(Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "configOverrides"    # Landroid/os/Bundle;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1859
    if-nez p1, :cond_0

    .line 1860
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1863
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1864
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1865
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    :goto_0
    return-void

    .line 1869
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendStoredMultipartTextMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
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
    .line 1830
    .local p3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    .line 1831
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1834
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1835
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1841
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 1838
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendStoredTextMessage(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1782
    if-nez p1, :cond_0

    .line 1783
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1786
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1787
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 1790
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 331
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 333
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I

    .prologue
    .line 2676
    const-string v1, "SmsManager"

    const-string v2, "sendTextMessage in SmsManager with callback"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2678
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2679
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2685
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2686
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "toddler mode on"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2681
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 2682
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2690
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2691
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_4

    .line 2692
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendTextwithCBPForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2698
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_4
    :goto_0
    return-void

    .line 2695
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "replyPath"    # Z
    .param p7, "expiry"    # I
    .param p8, "serviceType"    # I
    .param p9, "encodingType"    # I

    .prologue
    .line 2640
    const-string v1, "SmsManager"

    const-string v2, "sendTextMessage in SmsManager with options"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2643
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2644
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2650
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2651
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "toddler mode on"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2646
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 2647
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2654
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2655
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2656
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2660
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2661
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/telephony/ISms;->sendTextwithOptionsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2667
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2664
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 13
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "replyPath"    # Z
    .param p7, "expiry"    # I
    .param p8, "serviceType"    # I
    .param p9, "encodingType"    # I
    .param p10, "confirmId"    # I

    .prologue
    .line 2753
    const-string v1, "SmsManager"

    const-string v2, "sendTextMessage in SmsManager with confirmId"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2756
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2757
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2763
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2764
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2765
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2759
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 2760
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2768
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getToddlerMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2769
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "toddler mode on"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2773
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2774
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v0 .. v12}, Lcom/android/internal/telephony/ISms;->sendTextwithOptionsReadconfirmForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2780
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2777
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessageNSRI(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;II)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "from"    # Ljava/lang/String;
    .param p7, "msgCount"    # I
    .param p8, "msgTotal"    # I

    .prologue
    .line 2790
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2791
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2794
    :cond_0
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NSRI_SMS] sendTextMessageNSRI   Addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Smsc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " textLen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgTotal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2798
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 2799
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendTextNSRIForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2805
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 2802
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendTextMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 421
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 398
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 400
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
    const/4 v2, 0x0

    .line 2592
    const/4 v6, 0x0

    .line 2593
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 2595
    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2596
    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 2598
    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    :cond_0
    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2599
    invoke-virtual {p7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 2603
    .restart local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2604
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2605
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 2607
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setAutoPersisting(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1888
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1889
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 1890
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 1892
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCDMASmsReassembly(Z)V
    .locals 5
    .param p1, "onOff"    # Z

    .prologue
    .line 2616
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2617
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2618
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->setCDMASmsReassembly(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2623
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 2620
    :catch_0
    move-exception v0

    .line 2621
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expcetion in setCDMASmsReassembly "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 7
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .prologue
    .line 951
    const/4 v6, 0x0

    .line 954
    .local v6, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 955
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 964
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v6

    .line 960
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateSmsSendStatus(IZ)V
    .locals 0
    .param p1, "messageRef"    # I
    .param p2, "success"    # Z

    .prologue
    .line 477
    return-void
.end method

.method public updateSmsServiceCenterOnSim(Ljava/lang/String;)Z
    .locals 9
    .param p1, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 2016
    const-string v7, "SmsManager"

    const-string v8, "updateSmsServiceCenterOnSim"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    const/4 v5, 0x0

    .line 2023
    .local v5, "success":Z
    if-nez p1, :cond_1

    .line 2024
    const/4 v0, 0x0

    .line 2037
    .local v0, "encodedScAddress":[B
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 2038
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 2039
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v2, v7, v0}, Lcom/android/internal/telephony/ISms;->updateSmsServiceCenterOnSimEfForSubscriber(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_1
    move v6, v5

    .line 2045
    .end local v0    # "encodedScAddress":[B
    .end local v5    # "success":Z
    .local v6, "success":I
    :goto_2
    return v6

    .line 2026
    .end local v6    # "success":I
    .restart local v5    # "success":Z
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2027
    .local v4, "numberLenReal":I
    move v3, v4

    .line 2028
    .local v3, "numberLenEffective":I
    const/16 v7, 0x2b

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    const/4 v1, 0x1

    .line 2029
    .local v1, "hasPlus":Z
    :goto_3
    if-eqz v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 2030
    :cond_2
    const/16 v7, 0x14

    if-le v3, v7, :cond_4

    move v6, v5

    .line 2031
    .restart local v6    # "success":I
    goto :goto_2

    .line 2028
    .end local v1    # "hasPlus":Z
    .end local v6    # "success":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 2033
    .restart local v1    # "hasPlus":Z
    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "encodedScAddress":[B
    goto :goto_0

    .line 2041
    .end local v1    # "hasPlus":Z
    .end local v3    # "numberLenEffective":I
    .end local v4    # "numberLenReal":I
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public updateStoredMessageStatus(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "statusValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1664
    if-nez p1, :cond_0

    .line 1665
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1668
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1669
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1670
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1676
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 1673
    :catch_0
    move-exception v1

    .line 1676
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method useLte3GPPSms()Z
    .locals 3

    .prologue
    .line 1291
    const/4 v0, 0x0

    .line 1293
    .local v0, "boSupported":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1294
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1295
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->useLte3GPPSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1300
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1297
    :catch_0
    move-exception v2

    goto :goto_0
.end method
