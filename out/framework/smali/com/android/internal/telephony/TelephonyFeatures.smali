.class public Lcom/android/internal/telephony/TelephonyFeatures;
.super Ljava/lang/Object;
.source "TelephonyFeatures.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "TelephonyFeatures"

.field public static final NTCTYPE_COUNTRY:I = 0x3

.field public static final NTCTYPE_MAINOPERATOR:I = 0x0

.field public static final NTCTYPE_OPERATORTYPE:I = 0x2

.field public static final NTCTYPE_SUBOPERATOR:I = 0x1

.field public static final NTC_FEATURE_ALLOW_OTASP_EXTENDED_DIGITS:I = 0x4

.field public static final NTC_FEATURE_CDMA_ROAMING_MODE:I = 0x9

.field public static final NTC_FEATURE_CHANGE_PDN_BY_ROAMSTATUS:I = 0x6

.field public static final NTC_FEATURE_CHECK_SID_FOR_PLMN:I = 0xa

.field public static final NTC_FEATURE_COMBINED_SIGNAL:I = 0x1

.field public static final NTC_FEATURE_CONNECTION_FOR_GOOGLEIMS:I = 0xf

.field public static final NTC_FEATURE_CSC_SPRINT_CHAMELEON:I = 0x7

.field public static final NTC_FEATURE_DISPLAY_CLI_USING_REC:I = 0xd

.field public static final NTC_FEATURE_ERI_ON_AP:I = 0xc

.field public static final NTC_FEATURE_ERI_ON_CP:I = 0xb

.field public static final NTC_FEATURE_FAKE_OPERATOR_NUMERIC:I = 0x8

.field public static final NTC_FEATURE_MAX:I = 0x11

.field public static final NTC_FEATURE_REMOVE_ECB_EXIT:I = 0x2

.field public static final NTC_FEATURE_SERVICESTATE_FOR_GOOGLEIMS:I = 0xe

.field public static final NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING:I = 0x5

.field public static final NTC_FEATURE_USE_CSC_ERI:I = 0x10

.field public static final NTC_FEATURE_VZW_GLOBAL_DIALING:I = 0x3

.field public static final SALES_CODE:Ljava/lang/String;

.field public static final SHIP_BUILD:Z

.field private static mConfigNetworkTypeCapability:Ljava/lang/String;

.field private static mConfigVolteRedialPolicy:Ljava/lang/String;

.field private static mImsStubEnabled:Z

.field public static final mMultiSimConfig:Ljava/lang/String;

.field public static final mProductModelName:Ljava/lang/String;

.field private static mUsedNetworkType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    .line 41
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "ro.product.model"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mProductModelName:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "persist.radio.multisim.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMultiSimConfig:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 50
    const-string v0, "EUR"

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigVolteRedialPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "persist.radio.enable.stubDebug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mImsStubEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alwaysTerminalbasedCW(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 390
    const-string v4, "CHM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CHC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 392
    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, ""

    invoke-static {p0, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "simNumeric":Ljava/lang/String;
    const-string v4, "46000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "46002"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "46007"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 408
    .end local v1    # "simNumeric":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 397
    .restart local v1    # "simNumeric":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "ril.ICC_TYPE"

    const-string v5, "0"

    invoke-static {p0, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 399
    .local v0, "iccType":I
    if-le v0, v3, :cond_3

    move v2, v3

    .line 400
    goto :goto_0

    .line 404
    .end local v0    # "iccType":I
    .end local v1    # "simNumeric":Ljava/lang/String;
    :cond_3
    const-string v4, "DTM"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 405
    goto :goto_0
.end method

.method public static displaySpnRulePlmnAtAbout(I)Z
    .locals 5
    .param p0, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 305
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {p0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "iccOperatorNumeric":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "countryName":Ljava/lang/String;
    const-string v3, "CHN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HKG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TPE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v2

    .line 312
    :cond_1
    const-string v3, "52501"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static forceSetEpdgNetName()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 334
    const-string v1, "DTM"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "EUR"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImsStubEnabled()Z
    .locals 1

    .prologue
    .line 285
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mImsStubEnabled:Z

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMainOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMultiSimConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMultiSimConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, ""

    .line 295
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMultiSimConfig:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNtcFeature(I)Z
    .locals 6
    .param p0, "ntcFeature"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    packed-switch p0, :pswitch_data_0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown NTC feature: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->loge(Ljava/lang/String;)V

    :cond_0
    :pswitch_0
    move v2, v3

    .line 241
    :cond_1
    :goto_0
    return v2

    .line 166
    :pswitch_1
    const-string/jumbo v4, "ro.config.combined_signal"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 167
    .local v0, "combinedSignal":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    .line 169
    .local v1, "isVoiceCapable":Z
    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "USC"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 174
    .end local v0    # "combinedSignal":Z
    .end local v1    # "isVoiceCapable":Z
    :pswitch_2
    const-string v4, "SPR"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 179
    :pswitch_3
    const-string v4, "VZW"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 184
    :pswitch_4
    const-string v4, "USC"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 189
    :pswitch_5
    const-string v4, "SPR"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 196
    :pswitch_6
    const-string v4, "SPR"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 201
    :pswitch_7
    const-string v4, "SPR"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 206
    :pswitch_8
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 211
    :pswitch_9
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 216
    :pswitch_a
    const-string v4, "VZW"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 221
    :pswitch_b
    const-string v4, "SPR"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "USC"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 228
    :pswitch_c
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getNtcValue(I)Ljava/lang/String;
    .locals 3
    .param p0, "ntcType"    # I

    .prologue
    .line 137
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigNetworkTypeCapability:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "UNKNOWN"

    .line 146
    :goto_0
    return-object v1

    .line 141
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "ntcValue":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 143
    const-string v1, "UNKNOWN"

    goto :goto_0

    .line 146
    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static getSubOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUsedNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "UNKNOWN"

    .line 281
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVoltePolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "UNKNOWN"

    .line 274
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs isMainOperatorSpecific([Ljava/lang/String;)Z
    .locals 5
    .param p0, "Operator"    # [Ljava/lang/String;

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 262
    .local v3, "x":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const/4 v4, 0x1

    .line 266
    .end local v3    # "x":Ljava/lang/String;
    :goto_1
    return v4

    .line 260
    .restart local v3    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isUsaCdmaModel()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 245
    const-string v0, "USA"

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CDM"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GLB"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsaGlobalModel()Z
    .locals 2

    .prologue
    .line 252
    const-string v0, "USA"

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GLB"

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 436
    const-string v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method public static needToRunLteRoaming(I)Z
    .locals 6
    .param p0, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 367
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "SKT"

    aput-object v4, v3, v1

    const-string v4, "KTT"

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string v5, "LGT"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "KOO"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v1

    .line 371
    :cond_1
    const-string/jumbo v3, "ril.simtype"

    const-string v4, ""

    invoke-static {p0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "simType":Ljava/lang/String;
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "KTT"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "LGT"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "SKT"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 376
    goto :goto_0

    .line 377
    :cond_5
    const-string v3, "KOO"

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    .line 379
    goto :goto_0
.end method

.method public static needWaterproofSimTrayMsg()Z
    .locals 2

    .prologue
    .line 412
    const-string v0, "SAMSUNG-SM-G891A"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mProductModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reInitialize()V
    .locals 5

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 98
    .local v0, "oldConfigNetworkTypeCapability":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 99
    .local v2, "oldUsedNetworkType":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 101
    .local v1, "oldConfigVolteRedialPolicy":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 102
    const-string v3, "EUR"

    sput-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigVolteRedialPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reInitialize - ConfigNetworkTypeCapability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigNetworkTypeCapability:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reInitialize - UsedNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reInitialize - ConfigVolteRedialPolicy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static reInitilizeForTest(Ljava/lang/String;)V
    .locals 5
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v3, :cond_1

    .line 113
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 114
    .local v0, "oldConfigNetworkTypeCapability":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 115
    .local v2, "oldUsedNetworkType":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 116
    .local v1, "oldConfigVolteRedialPolicy":Ljava/lang/String;
    const-string v3, "VZW"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    const-string v3, "VZW-VZW-GLB-USA"

    sput-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 118
    const-string v3, "VZW-CDMA"

    sput-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 119
    const-string/jumbo v3, "vzwvowifi"

    sput-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 125
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reInitilizeForTest - ConfigNetworkTypeCapability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigNetworkTypeCapability:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reInitilizeForTest - UsedNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reInitilizeForTest - ConfigVolteRedialPolicy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 129
    .end local v0    # "oldConfigNetworkTypeCapability":Ljava/lang/String;
    .end local v1    # "oldConfigVolteRedialPolicy":Ljava/lang/String;
    .end local v2    # "oldUsedNetworkType":Ljava/lang/String;
    :cond_1
    return-void

    .line 120
    .restart local v0    # "oldConfigNetworkTypeCapability":Ljava/lang/String;
    .restart local v1    # "oldConfigVolteRedialPolicy":Ljava/lang/String;
    .restart local v2    # "oldUsedNetworkType":Ljava/lang/String;
    :cond_2
    const-string v3, "ATT"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const-string v3, "ATT-ATT-GSM-USA"

    sput-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 122
    const-string v3, "ATT"

    sput-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 123
    const-string v3, "att"

    sput-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setFakeRoamingOrHome()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 424
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SKT"

    aput-object v3, v2, v0

    const-string v3, "KTT"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v4, "LGT"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "KOO"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static showEpdgNetNameWhenEpdgRegi()Z
    .locals 2

    .prologue
    .line 348
    const-string v0, "EUR"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showEpdgNetNameWhenEpdgRegiAndCSOos()Z
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUR"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showOnlyPlmnWhenSpnPlmnSame()Z
    .locals 2

    .prologue
    .line 358
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
