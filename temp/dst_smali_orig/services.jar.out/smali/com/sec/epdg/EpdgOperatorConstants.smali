.class public Lcom/sec/epdg/EpdgOperatorConstants;
.super Ljava/lang/Object;
.source "EpdgOperatorConstants.java"


# static fields
.field public static final ATTACH_APN_ID:I = 0x1

.field public static final CDMA_PROFILING:Z

.field public static final CHANGE_PREFERREDMODE_AT_ROAMING:Z

.field public static final DELAY_HO_UNTIL_REGI_FINISHED:Z

.field public static final DELAY_L2W_AND_W2L:Z

.field public static final DISCONNECT_AFTER_DEREGI:Z

.field public static final DNS_RETRY_THROTTLE_COUNTER:I = 0x5

.field public static final EMERGENCY_CALLBACK_MODE:Z

.field public static final HAS_DIFFERENT_ROAMING_POLICY:Z

.field public static final IMS_APN_ID:I

.field public static final IMS_CALL_MONITORING:Z

.field public static final IMS_REGISTRATION_MONITORING:Z

.field public static final INTERNET_APN_ID:I

.field public static final IWLAN_INTERFACE_PREFIX:Ljava/lang/String; = "epdg"

.field public static final KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

.field public static final LTE_IDLE_PROFILING:Z

.field public static final LTE_PROFILING:Z

.field public static final PDPD_CHECK_TIMEOUT:I

.field public static final SEPARATE_VIDEO_FROM_VOWIFI:Z

.field public static final SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

.field public static final SUPPORT_CDMA_NETWORK:Z

.field public static final SUPPORT_DOWNGRADED_VIDEO_CALL:Z

.field public static final SUPPORT_IMSI_FROM_IMPI:Z

.field public static final SUPPORT_KEEP_ALIVE:Z

.field public static final SUPPORT_MULTIPLE_EPDGIP:Z

.field public static final SUPPORT_VOLTE:Z

.field public static final SUPPORT_VOWIFI_PROVISIONING:Z

.field public static final SUPPORT_WEAK_WIFI_SIGNAL_WARNING:Z = false

.field public static final SUPPORT_WIFI_OVER_IPME:Z

.field public static final SUPPORT_WIFI_RSSI_POLLING:Z

.field public static final VOWIFI_BLACKLIST_BLOCKING:Z

.field public static final WIFI_INTERFACE_NAME:Ljava/lang/String; = "wlan0"

.field public static final WIFI_THRESHOLD_BASED_HO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAVE2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAVE2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAVE2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    const/16 v0, 0x9

    sput v0, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVod()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    const/16 v0, 0x1f

    sput v0, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorPlay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorMTN()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0

    :cond_6
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    sput-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
