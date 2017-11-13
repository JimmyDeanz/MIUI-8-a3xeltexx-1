.class public Lcom/samsung/android/telephony/MultiSimManager;
.super Ljava/lang/Object;
.source "MultiSimManager.java"


# static fields
.field public static final ICC_LOCKED:I = 0x1

.field public static final ICC_NOT_SUPPORT:I = -0x1

.field public static final ICC_UNLOCKED:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "MultiSimManager"

.field private static final PHONE_ID_TYPE_FOREGROUND_CALL:I = 0x0

.field private static final PHONE_ID_TYPE_REJECT_CALL:I = 0x1

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field private static final SIMSLOT_COUNT:I

.field private static SM:Landroid/telephony/SubscriptionManager; = null

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_SMS:I = 0x2

.field public static final TYPE_VOICE:I = 0x1

.field private static final mPhoneOnKey:[Ljava/lang/String;

.field private static final mSimIconKey:[Ljava/lang/String;

.field private static final mSimNameKey:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select_name_1"

    aput-object v1, v0, v2

    const-string v1, "select_name_2"

    aput-object v1, v0, v3

    const-string v1, "select_name_3"

    aput-object v1, v0, v4

    const-string v1, "select_name_4"

    aput-object v1, v0, v5

    const-string v1, "select_name_5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select_icon_1"

    aput-object v1, v0, v2

    const-string v1, "select_icon_2"

    aput-object v1, v0, v3

    const-string v1, "select_icon_3"

    aput-object v1, v0, v4

    const-string v1, "select_icon_4"

    aput-object v1, v0, v5

    const-string v1, "select_icon_5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "phone1_on"

    aput-object v1, v0, v2

    const-string v1, "phone2_on"

    aput-object v1, v0, v3

    const-string v1, "phone3_on"

    aput-object v1, v0, v4

    const-string v1, "phone4_on"

    aput-object v1, v0, v5

    const-string v1, "phone5_on"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/samsung/android/telephony/MultiSimManager;->SIMSLOT_COUNT:I

    new-instance v0, Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/telephony/MultiSimManager;->SM:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allDefaultsSelected()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->allDefaultsSelected()Z

    move-result v0

    return v0
.end method

.method public static answerRingingCall(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v0

    .local v0, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->answerRingingCall(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v1, "str":Ljava/lang/StringBuilder;
    if-ltz p1, :cond_1

    sget v2, Lcom/samsung/android/telephony/MultiSimManager;->SIMSLOT_COUNT:I

    if-ge p1, v2, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const-string v2, "MultiSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimSlot value is bigger than SIMSLOT_COUNT or smaller than 0.(text : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "appendSimSlot method exception"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static call(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "slotId"    # I
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v0

    .local v0, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/telephony/TelephonyManager;->call(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static dial(ILjava/lang/String;)V
    .locals 2
    .param p0, "slotId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v0

    .local v0, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/telephony/TelephonyManager;->dial(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static endCall(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->endCall(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getActiveSubIdList()[J
    .locals 6

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v3

    .local v3, "subIds":[I
    array-length v4, v3

    if-lez v4, :cond_0

    array-length v1, v3

    .local v1, "numSubIds":I
    :goto_0
    new-array v2, v1, [J

    .local v2, "subIdArr":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    aget v4, v3, v0

    int-to-long v4, v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "numSubIds":I
    .end local v2    # "subIdArr":[J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "numSubIds":I
    .restart local v2    # "subIdArr":[J
    :cond_1
    return-object v2
.end method

.method public static getActiveSubInfoCount()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static getActiveSubInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveSubscriptionIdList()[I
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    return-object v0
.end method

.method public static getAllSubInfoCount()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static getAllSubInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCallState(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCurrentPhoneType(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getDataNetworkType(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDataRoamingEnabled(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDataServiceState(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataServiceState(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDataState(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataState(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDataStateUsingSubId(I)I
    .locals 1
    .param p0, "subId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultPhoneId(I)I
    .locals 3
    .param p0, "type"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDefaultPhoneId] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDefaultSubId(I)J
    .locals 2
    .param p0, "type"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :pswitch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDefaultSubInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p0, "type"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDefaultSubInfo] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDefaultSubscriptionId(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledSimCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .local v2, "count":I
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .local v1, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .local v0, "SubscriptionInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "iccType":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-static {p0, v5}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "SubscriptionInfo":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "iccType":Ljava/lang/String;
    :cond_1
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return getEnabledSimCount count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static getGroupIdLevel1(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getIccLockState()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "gsm.facilitylock.state"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "prop":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getImei(I)Ljava/lang/String;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInsertedSimCount()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static getInsertedSimNum()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlot":I
    :goto_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "iccType":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public static getLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLine1Number(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLine1NumberUsingSubId(I)Ljava/lang/String;
    .locals 1
    .param p0, "subId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaMode(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getMeid(I)Ljava/lang/String;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMsisdn(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMultiSimPhoneId(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimForegroundPhoneId()I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimLastRejectIncomingCallPhoneId()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkCountryIso(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getNetworkOperator(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getNetworkOperatorName(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getNetworkType(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPhoneId(I)I
    .locals 1
    .param p0, "subId"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getPhoneId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    long-to-int v0, p0

    .local v0, "sub":I
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getPhoneId(I)I

    move-result v1

    return v1
.end method

.method public static getServiceState(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getServiceState(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getServiceStateUsingSubId(I)I
    .locals 1
    .param p0, "subId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v0

    return v0
.end method

.method public static getServiceStateUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    long-to-int v0, p0

    .local v0, "sub":I
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getServiceStateUsingSubId(I)I

    move-result v1

    return v1
.end method

.method public static getSimCountryIso(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimIcon(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "simIcon":I
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimIcon ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "simName":Ljava/lang/String;
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "SIM 1"

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "SIM 1"

    goto :goto_0

    :pswitch_1
    const-string v0, "SIM 2"

    goto :goto_0

    :pswitch_2
    const-string v0, "SIM 3"

    goto :goto_0

    :pswitch_3
    const-string v0, "SIM 4"

    goto :goto_0

    :pswitch_4
    const-string v0, "SIM 5"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimOperator(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimOperatorName(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimSlotCount()I
    .locals 1

    .prologue
    sget v0, Lcom/samsung/android/telephony/MultiSimManager;->SIMSLOT_COUNT:I

    return v0
.end method

.method public static getSimState(I)I
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static getSlotId(I)I
    .locals 1
    .param p0, "subId"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public static getSlotId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    long-to-int v0, p0

    .local v0, "sub":I
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v1

    return v1
.end method

.method public static getSubId(I)[J
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .local v3, "subIds":[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    array-length v1, v3

    .local v1, "numSubIds":I
    :goto_0
    new-array v2, v1, [J

    .local v2, "subIdArr":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    aget v4, v3, v0

    int-to-long v4, v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "numSubIds":I
    .end local v2    # "subIdArr":[J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "numSubIds":I
    .restart local v2    # "subIdArr":[J
    :cond_1
    return-object v2
.end method

.method public static getSubIdUsingProperty(I)I
    .locals 8
    .param p0, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "propVal":Ljava/lang/String;
    const v3, 0x7fffffff

    .local v3, "subId":I
    const-string v5, "ril.subinfo"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "values":[Ljava/lang/String;
    if-ltz p0, :cond_0

    array-length v5, v4

    if-ge p0, v5, :cond_0

    aget-object v5, v4, p0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v1, v4, p0

    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "retStr":[Ljava/lang/String;
    if-ltz p0, :cond_1

    array-length v5, v2

    if-ge p0, v5, :cond_1

    aget-object v5, v2, p0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .end local v2    # "retStr":[Ljava/lang/String;
    :cond_1
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static getSubInfoForSubscriber(I)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "subId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoForSubscriber(J)Landroid/telephony/SubscriptionInfo;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    long-to-int v0, p0

    .local v0, "sub":I
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubInfoForSubscriber(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getSubInfoUsingIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "iccId"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoUsingSlotId(I)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSubscriptionId(I)[I
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    return-object v0
.end method

.method private static getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 1

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    return-object v0
.end method

.method private static getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    return-object v1
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v1, v2, p1

    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static getTelephonyPropertyUsingSubId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getPhoneId(I)I

    move-result v0

    .local v0, "phoneId":I
    invoke-static {v0, p0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getVoiceMessageCount(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getVoiceNetworkType(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static handlePinMmi(ILjava/lang/String;)Z
    .locals 3
    .param p0, "slotId"    # I
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/telephony/TelephonyManager;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasIccCard(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .locals 3
    .param p0, "slotId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEnabledSim(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "simActive":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v1, "MultiSimManager"

    const-string v2, "return isEnabledSim = false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIdle(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isIdle(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNetworkRoaming(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNoSIM()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "iccType":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const-string v3, "MultiSimManager"

    const-string v4, "return isNoSIM = false"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isOffhook(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isOffhook(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRadioOn(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isRadioOn(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRinging(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isRinging(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimFDNEnabledSubId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->isSimFDNEnabledForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public static isValidSubId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    return v0
.end method

.method public static isValidSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    long-to-int v0, p0

    .local v0, "sub":I
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->isValidSubId(I)Z

    move-result v1

    return v1
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # J

    .prologue
    long-to-int v0, p2

    .local v0, "sub":I
    invoke-static {p0, p1, v0}, Lcom/samsung/android/telephony/MultiSimManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    return-void
.end method

.method public static setDataEnabled(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method

.method public static setDefaultSubId(II)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "subId"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDefaultSubId] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setDefaultSubId(IJ)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "subId"    # J

    .prologue
    long-to-int v0, p1

    .local v0, "sub":I
    invoke-static {p0, v0}, Lcom/samsung/android/telephony/MultiSimManager;->setDefaultSubId(II)V

    return-void
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p1, p0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static supplyPin(ILjava/lang/String;)Z
    .locals 3
    .param p0, "slotId"    # I
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/telephony/TelephonyManager;->supplyPin(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static supplyPinReportResult(ILjava/lang/String;)[I
    .locals 3
    .param p0, "slotId"    # I
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/telephony/TelephonyManager;->supplyPinReportResult(ILjava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    new-array v2, v2, [I

    goto :goto_0
.end method

.method public static supplyPuk(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "slotId"    # I
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPuk(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static supplyPukReportResult(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .param p0, "slotId"    # I
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPukReportResult(ILjava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    new-array v2, v2, [I

    goto :goto_0
.end method


# virtual methods
.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubIdUsingProperty(I)I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method
