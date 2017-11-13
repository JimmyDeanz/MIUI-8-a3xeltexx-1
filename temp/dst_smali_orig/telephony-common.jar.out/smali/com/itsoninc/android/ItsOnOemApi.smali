.class public Lcom/itsoninc/android/ItsOnOemApi;
.super Ljava/lang/Object;
.source "ItsOnOemApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsoninc/android/ItsOnOemApi$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static FRAMEWORK_INTEGRATION_VERSION:Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "ItsOnOemAPI"

.field private static instance:Lcom/itsoninc/android/ItsOnOemApi;

.field private static mContext_sendBroadcastAsUser:Ljava/lang/reflect/Method;

.field private static mProcess_myUserHandle:Ljava/lang/reflect/Method;

.field private static smsApplication_getDefaultMmsApplication:Ljava/lang/reflect/Method;

.field private static subscriptionManager_getDefaultVoicePhoneId:Ljava/lang/reflect/Method;

.field private static subscriptionManager_getDefaultVoiceSubId:Ljava/lang/reflect/Method;

.field private static subscriptionManager_putPhoneIdAndSubIdExtra:Ljava/lang/reflect/Method;

.field private static telephonyManager_getCurrentPhoneType:Ljava/lang/reflect/Method;


# instance fields
.field private callInterceptReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private mCdmaTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

.field private mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

.field private mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private reinjectReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "17.1"

    sput-object v0, Lcom/itsoninc/android/ItsOnOemApi;->FRAMEWORK_INTEGRATION_VERSION:Ljava/lang/String;

    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->initCompatibility()V

    const/4 v0, 0x0

    sput-object v0, Lcom/itsoninc/android/ItsOnOemApi;->instance:Lcom/itsoninc/android/ItsOnOemApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mCdmaTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    new-instance v0, Lcom/itsoninc/android/ItsOnOemApi$1;

    invoke-direct {v0, p0}, Lcom/itsoninc/android/ItsOnOemApi$1;-><init>(Lcom/itsoninc/android/ItsOnOemApi;)V

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->callInterceptReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/itsoninc/android/ItsOnOemApi$2;

    invoke-direct {v0, p0}, Lcom/itsoninc/android/ItsOnOemApi$2;-><init>(Lcom/itsoninc/android/ItsOnOemApi;)V

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->reinjectReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_getDefaultVoicePhoneId:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_getDefaultVoiceSubId:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200(Lcom/itsoninc/android/ItsOnOemApi;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/itsoninc/android/ItsOnOemApi;

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itsoninc/android/ItsOnOemApi;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itsoninc/android/ItsOnOemApi;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/itsoninc/android/ItsOnOemApi;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/itsoninc/android/ItsOnOemApi;)Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    .locals 1
    .param p0, "x0"    # Lcom/itsoninc/android/ItsOnOemApi;

    .prologue
    invoke-direct {p0}, Lcom/itsoninc/android/ItsOnOemApi;->dequeueSms()Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApi;->smsApplication_getDefaultMmsApplication:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$600(Lcom/itsoninc/android/ItsOnOemApi;Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/itsoninc/android/ItsOnOemApi;
    .param p1, "x1"    # Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    .prologue
    invoke-direct {p0, p1}, Lcom/itsoninc/android/ItsOnOemApi;->getPduFormatName(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_putPhoneIdAndSubIdExtra:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private dequeueSms()Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->dequeueSms()Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;

    move-result-object v0

    return-object v0
.end method

.method private getCallingUID()I
    .locals 4

    .prologue
    const-class v0, Landroid/os/Binder;

    .local v0, "binderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "getCallingUid"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getFrameworkIntegrationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApi;->FRAMEWORK_INTEGRATION_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method private getFrameworkIntegrationVersionMajor()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->getFrameworkIntegrationVersion()Ljava/lang/String;

    move-result-object v0

    .local v0, "version":Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/itsoninc/android/ItsOnOemApi;
    .locals 2

    .prologue
    const-class v1, Lcom/itsoninc/android/ItsOnOemApi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApi;->instance:Lcom/itsoninc/android/ItsOnOemApi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsoninc/android/ItsOnOemApi;

    invoke-direct {v0}, Lcom/itsoninc/android/ItsOnOemApi;-><init>()V

    sput-object v0, Lcom/itsoninc/android/ItsOnOemApi;->instance:Lcom/itsoninc/android/ItsOnOemApi;

    :cond_0
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApi;->instance:Lcom/itsoninc/android/ItsOnOemApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPduFormatName(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;)Ljava/lang/String;
    .locals 2
    .param p1, "encoding"    # Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    .prologue
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApi$3;->$SwitchMap$com$itsoninc$android$oemfw$api$v17$ParcelableRawSms$Encoding:[I

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "3gpp"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "3gpp2"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getRadioType(I)I
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "radioType":I
    sget-object v2, Lcom/itsoninc/android/ItsOnOemApi;->telephonyManager_getCurrentPhoneType:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/itsoninc/android/ItsOnOemApi;->telephonyManager_getCurrentPhoneType:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/itsoninc/android/ItsOnOemApi;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/itsoninc/android/ItsOnOemApi;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    const-string v2, "ItsOnOemAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get a valid phone type for sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ItsOnOemAPI"

    const-string v3, "Failed to invoke TelephonyManager.getCurrentPhoneType(long)"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static initCompatibility()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    :try_start_0
    const-string v5, "android.os.UserHandle"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .local v4, "userHandle":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Landroid/content/Context;

    const-string v6, "sendBroadcastAsUser"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Intent;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/itsoninc/android/ItsOnOemApi;->mContext_sendBroadcastAsUser:Ljava/lang/reflect/Method;

    const-class v5, Landroid/os/Process;

    const-string v6, "myUserHandle"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/itsoninc/android/ItsOnOemApi;->mProcess_myUserHandle:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v5, "com.android.internal.telephony.SmsApplication"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "smsApplication":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getDefaultSmsApplication"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/itsoninc/android/ItsOnOemApi;->smsApplication_getDefaultMmsApplication:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "smsApplication":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    :try_start_2
    const-string v5, "android.telephony.SubscriptionManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .local v2, "subscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getDefaultVoicePhoneId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_getDefaultVoicePhoneId:Ljava/lang/reflect/Method;

    const-string v5, "getDefaultVoiceSubId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_getDefaultVoiceSubId:Ljava/lang/reflect/Method;

    const-string v5, "putPhoneIdAndSubIdExtra"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Intent;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_putPhoneIdAndSubIdExtra:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2    # "subscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    :try_start_3
    const-class v3, Landroid/telephony/TelephonyManager;

    .local v3, "telephonyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getCurrentPhoneType"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/itsoninc/android/ItsOnOemApi;->telephonyManager_getCurrentPhoneType:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .end local v3    # "telephonyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sput-object v10, Lcom/itsoninc/android/ItsOnOemApi;->mContext_sendBroadcastAsUser:Ljava/lang/reflect/Method;

    sput-object v10, Lcom/itsoninc/android/ItsOnOemApi;->mProcess_myUserHandle:Ljava/lang/reflect/Method;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    sput-object v10, Lcom/itsoninc/android/ItsOnOemApi;->smsApplication_getDefaultMmsApplication:Ljava/lang/reflect/Method;

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    sput-object v10, Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_getDefaultVoicePhoneId:Ljava/lang/reflect/Method;

    sput-object v10, Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_getDefaultVoiceSubId:Ljava/lang/reflect/Method;

    sput-object v10, Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_putPhoneIdAndSubIdExtra:Ljava/lang/reflect/Method;

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    sput-object v10, Lcom/itsoninc/android/ItsOnOemApi;->telephonyManager_getCurrentPhoneType:Ljava/lang/reflect/Method;

    goto :goto_3
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .local v0, "airplane":Z
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-ge v9, v10, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    const-class v9, Landroid/provider/Settings;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .local v3, "cc":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .local v8, "settingsGlobalClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/Class;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v2, v1, v6

    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.provider.Settings$Global"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v8, v2

    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string v9, "getInt"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/ContentResolver;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .local v5, "getInt":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "airplane_mode_on"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_4

    const/4 v0, 0x1

    :goto_2
    goto :goto_0

    .end local v5    # "getInt":Ljava/lang/reflect/Method;
    .restart local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "getInt":Ljava/lang/reflect/Method;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .end local v1    # "arr$":[Ljava/lang/Class;
    .end local v3    # "cc":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "getInt":Ljava/lang/reflect/Method;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "settingsGlobalClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "ItsOnOemAPI"

    const-string v10, "Could not determine airplane mode"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerReceivers(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v2, p0, Lcom/itsoninc/android/ItsOnOemApi;->reinjectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.itsoninc.android.INTENT_RELEASE_QUEUED_SMS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "com.itsoninc.android.permission.ITSON_SIGNATURE"

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .local v1, "res":I
    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "callInterceptFilter":Landroid/content/IntentFilter;
    const/16 v2, -0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lcom/itsoninc/android/ItsOnOemApi;->callInterceptReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0    # "callInterceptFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    :cond_0
    const-string v2, "ItsOnOemAPI"

    const-string v3, "No permission for call receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    sget-object v2, Lcom/itsoninc/android/ItsOnOemApi;->mContext_sendBroadcastAsUser:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/itsoninc/android/ItsOnOemApi;->mProcess_myUserHandle:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "userHandle":Ljava/lang/Object;
    sget-object v2, Lcom/itsoninc/android/ItsOnOemApi;->mContext_sendBroadcastAsUser:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/itsoninc/android/ItsOnOemApi;->context:Landroid/content/Context;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "userHandle":Ljava/lang/Object;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ItsOnOemAPI"

    const-string v3, "Failed to invoke Context.sendBroadcastAsUser"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/itsoninc/android/ItsOnOemApi;->context:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendLocalSocket(Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 10
    .param p1, "type"    # Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1000

    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    .local v5, "sock":Landroid/net/LocalSocket;
    new-instance v7, Landroid/net/LocalSocketAddress;

    const-string v8, "itson/notify"

    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v7, v8, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v5, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const/16 v7, 0x1388

    invoke-virtual {v5, v7}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    const/4 v3, 0x0

    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .local v2, "msgBytes":[B
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    array-length v9, v2

    if-le v9, v6, :cond_1

    :goto_1
    invoke-virtual {v3, v7, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Landroid/net/LocalSocket;->shutdownOutput()V

    const/4 v6, 0x1

    new-array v4, v6, [B

    .local v4, "resp":[B
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .local v0, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "msgBytes":[B
    .end local v4    # "resp":[B
    :cond_0
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    .restart local v1    # "msg":Ljava/lang/String;
    .restart local v2    # "msgBytes":[B
    :cond_1
    array-length v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "msgBytes":[B
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    throw v6

    :catch_0
    move-exception v7

    goto :goto_3

    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "msg":Ljava/lang/String;
    .restart local v2    # "msgBytes":[B
    .restart local v4    # "resp":[B
    :catch_1
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public acceptCall(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mCdmaTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    invoke-virtual {v0, p1, p2}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->acceptCall(II)V

    return-void
.end method

.method authorizeIncomingSms([BII)Z
    .locals 4
    .param p1, "pdu"    # [B
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    invoke-direct {p0, p3}, Lcom/itsoninc/android/ItsOnOemApi;->getRadioType(I)I

    move-result v2

    .local v2, "telephonyType":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->GSM:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    .local v0, "phoneType":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    :goto_0
    new-instance v1, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;-><init>([BLcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;II)V

    .local v1, "sms":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    iget-object v3, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v3, v1}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->authorizeIncomingSms(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;)Z

    move-result v3

    return v3

    .end local v0    # "phoneType":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    .end local v1    # "sms":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    :cond_0
    sget-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->CDMA:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    goto :goto_0
.end method

.method public authorizeIncomingVoice(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnOemApi;->mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnOemApi;->mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizeIncomingVoice(Ljava/lang/String;II)Z

    move-result v0

    .local v0, "allowed":Z
    const-string v1, "ItsOnOemAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auth incoming voice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method authorizeOutgoingSms([BIII)Z
    .locals 4
    .param p1, "pdu"    # [B
    .param p2, "serial"    # I
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I

    .prologue
    invoke-direct {p0, p4}, Lcom/itsoninc/android/ItsOnOemApi;->getRadioType(I)I

    move-result v2

    .local v2, "telephonyType":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->GSM:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    .local v0, "phoneType":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    :goto_0
    new-instance v1, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;-><init>([BLcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;II)V

    .local v1, "sms":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    iget-object v3, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v3, v1, p2}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->authorizeOutgoingSms(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;I)Z

    move-result v3

    return v3

    .end local v0    # "phoneType":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    .end local v1    # "sms":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    :cond_0
    sget-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->CDMA:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    goto :goto_0
.end method

.method public authorizeOutgoingVoice(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "allowed":Z
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnOemApi;->mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsoninc/android/ItsOnOemApi;->mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizeOutgoingVoice(Ljava/lang/String;II)Z

    move-result v0

    :cond_0
    const-string v1, "ItsOnOemAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auth GSM outgoing voice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public callWaiting(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnOemApi;->mCdmaTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->callWaiting(Ljava/lang/String;II)Z

    move-result v0

    .local v0, "allowed":Z
    const-string v1, "ItsOnOemAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auth callWaiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public dial(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnOemApi;->mCdmaTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->dial(Ljava/lang/String;II)Z

    move-result v0

    .local v0, "allowed":Z
    const-string v1, "ItsOnOemAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auth dial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public flash(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnOemApi;->mCdmaTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->flash(Ljava/lang/String;II)Z

    move-result v0

    .local v0, "allowed":Z
    const-string v2, "ItsOnOemAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auth flash "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initFramework(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "ItsOnOemAPI"

    const-string v1, "Initializing framework"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/itsoninc/android/ItsOnOemApi;->context:Landroid/content/Context;

    return-void
.end method

.method public initTelephony(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const-string v0, "ItsOnOemAPI"

    const-string v1, "Initializing telephony"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/itsoninc/android/ItsOnOemApi;->context:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-direct {v0, p1, v2}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bind()V

    :cond_0
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    iget-object v1, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-direct {v0, p1, v1}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;-><init>(Landroid/content/Context;Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iget-object v1, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-direct {v0, p1, v1}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;-><init>(Landroid/content/Context;Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mCdmaTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    :cond_1
    invoke-direct {p0, p1}, Lcom/itsoninc/android/ItsOnOemApi;->registerReceivers(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0, v2}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->setRegisterCallbacks(Z)V

    return-void
.end method

.method public isDataAllowed(IILjava/lang/String;II)Z
    .locals 7
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "phoneId"    # I
    .param p5, "subId"    # I

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    if-nez v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->isDataAllowed(IILjava/lang/String;II)Z

    move-result v6

    .local v6, "allowed":Z
    const-string v0, "ItsOnOemAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is data allowed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public nitzTimeReceived(Ljava/lang/String;J)V
    .locals 2
    .param p1, "nitzTime"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->nitzTimeReceived(Ljava/lang/String;J)V

    return-void
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.itsoninc.android.INTENT_PROCESS_FOREGROUND_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PROCESS_PID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PROCESS_UID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PROCESS_ACTIVITIES_FOREGROUND"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.itsoninc.android.itsonservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.itsoninc.android.permission.ITSON_SIGNATURE"

    invoke-direct {p0, v0, v1}, Lcom/itsoninc/android/ItsOnOemApi;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.itsoninc.android.INTENT_PROCESS_IMPORTANCE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PROCESS_PID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PROCESS_UID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PROCESS_IMPORTANCE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.itsoninc.android.itsonservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.itsoninc.android.permission.ITSON_SIGNATURE"

    invoke-direct {p0, v0, v1}, Lcom/itsoninc/android/ItsOnOemApi;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "phoneId"    # I
    .param p5, "subId"    # I

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onProcessDied(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.itsoninc.android.INTENT_PROCESS_DIED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PROCESS_PID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PROCESS_UID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.itsoninc.android.itsonservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.itsoninc.android.permission.ITSON_SIGNATURE"

    invoke-direct {p0, v0, v1}, Lcom/itsoninc/android/ItsOnOemApi;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public processCDMACallList(Ljava/util/List;II)V
    .locals 1
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mCdmaTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->processCallList(Ljava/util/List;II)V

    return-void
.end method

.method public processCallList(Ljava/util/List;II)V
    .locals 1
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->processCallList(Ljava/util/List;II)V

    return-void
.end method

.method public registerActivityMapping(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    :try_start_0
    sget-object v1, Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;->ADD_ACTIVITY_MAPPING:Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/itsoninc/android/ItsOnOemApi;->sendLocalSocket(Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ItsOnOemAPI"

    const-string v2, "Send local socket ADD_ACTIVITY_MAPPING failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerDownloadMapping(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/itsoninc/android/ItsOnOemApi;->getCallingUID()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v2, "ItsOnOemAPI"

    const-string v3, "Could not get calling UID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "callingUid":I
    :goto_0
    return-void

    .restart local v0    # "callingUid":I
    :cond_0
    const-string v2, "ItsOnOemAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID ->>>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;->ADD_DOWNLOAD_MAPPING:Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/itsoninc/android/ItsOnOemApi;->sendLocalSocket(Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "callingUid":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ItsOnOemAPI"

    const-string v3, "Send local socket ADD_DOWNLOAD_MAPPING failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMediaMapping(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    :try_start_0
    sget-object v1, Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;->ADD_MEDIA_MAPPING:Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/itsoninc/android/ItsOnOemApi;->sendLocalSocket(Lcom/itsoninc/android/oemfw/api/v17/FrameworkNotificationType;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ItsOnOemAPI"

    const-string v2, "Send local socket ADD_MEDIA_MAPPING failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataConnectionHandler(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "trySetupDataMessage"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0, p1, p2}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->setDataConnectionHandler(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setEmergencyMode(ZII)V
    .locals 1
    .param p1, "inEmergencyMode"    # Z
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mCdmaTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->setEmergencyMode(ZII)V

    return-void
.end method

.method public setHangupInterface(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;)V
    .locals 1
    .param p1, "hangupIf"    # Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mGsmTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    invoke-virtual {v0, p1}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->setHangupInterface(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;)V

    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mCdmaTelephonyClient:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    invoke-virtual {v0, p1}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->setHangupInterface(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;)V

    :cond_0
    return-void
.end method

.method public smsError(III)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->smsError(III)V

    return-void
.end method

.method public smsSuccess(III)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApi;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->smsSuccess(III)V

    return-void
.end method
