.class public Lcom/samsung/android/server/wifi/WifiBigDataLog;
.super Ljava/lang/Object;
.source "WifiBigDataLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/WifiBigDataLog$1;,
        Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;
    }
.end annotation


# static fields
.field private static final ASSOC:[[Ljava/lang/String;

.field private static final CURR:[[Ljava/lang/String;

.field private static DBG:Z = false

.field private static final DISC:[[Ljava/lang/String;

.field private static final EAPINFO:[[Ljava/lang/String;

.field public static final FEATURE_ASSOC:Ljava/lang/String; = "ASSO"

.field public static final FEATURE_DISC:Ljava/lang/String; = "DISC"

.field public static final FEATURE_EAP_INFO:Ljava/lang/String; = "EAPT"

.field public static final FEATURE_GO_TO_WEBPAGE:Ljava/lang/String; = "GOWP"

.field public static final FEATURE_HANG:Ljava/lang/String; = "HANG"

.field public static final FEATURE_ON_OFF:Ljava/lang/String; = "ONOF"

.field public static final FEATURE_SCAN:Ljava/lang/String; = "SCAN"

.field public static final FEATURE_WAKE_LOCK:Ljava/lang/String; = "CURR"

.field private static final GOWP:[[Ljava/lang/String;

.field private static final HANG:[[Ljava/lang/String;

.field public static final KEY_AP_80211MODE:Ljava/lang/String; = "ap_mod"

.field public static final KEY_AP_AKM:Ljava/lang/String; = "ap_akm"

.field public static final KEY_AP_ANTENNA:Ljava/lang/String; = "ap_ant"

.field public static final KEY_AP_ASSOC_DISABLE:Ljava/lang/String; = "cn_dis"

.field public static final KEY_AP_ASSOC_REJECT:Ljava/lang/String; = "cn_sts"

.field public static final KEY_AP_BANDWIDTH:Ljava/lang/String; = "ap_bdw"

.field public static final KEY_AP_CHANNEL:Ljava/lang/String; = "ap_chn"

.field public static final KEY_AP_DATA_RATE:Ljava/lang/String; = "ap_drt"

.field public static final KEY_AP_DISCONNECT_REASON:Ljava/lang/String; = "cn_rsn"

.field public static final KEY_AP_INTERNAL_REASON:Ljava/lang/String; = "cn_irs"

.field public static final KEY_AP_LOCALLY_GENERATED:Ljava/lang/String; = "aplo"

.field public static final KEY_AP_MU_MIMO:Ljava/lang/String; = "ap_mmo"

.field public static final KEY_AP_NOISE:Ljava/lang/String; = "ap_nos"

.field public static final KEY_AP_OUI:Ljava/lang/String; = "ap_oui"

.field public static final KEY_AP_PASSPOINT:Ljava/lang/String; = "ap_pas"

.field public static final KEY_AP_ROAMING_COUNT:Ljava/lang/String; = "ap_rct"

.field public static final KEY_AP_ROAMING_TRIGGER:Ljava/lang/String; = "cn_rom"

.field public static final KEY_AP_RSSI:Ljava/lang/String; = "ap_rsi"

.field public static final KEY_AP_SCAN_COUNT_SAME_CHANNEL:Ljava/lang/String; = "ap_snt"

.field public static final KEY_AP_SCAN_COUNT_TOTAL:Ljava/lang/String; = "ap_stc"

.field public static final KEY_AP_SECURE_TYPE:Ljava/lang/String; = "ap_sec"

.field public static final KEY_AP_SNR:Ljava/lang/String; = "ap_snr"

.field public static final KEY_AP_VENDOR_SPECIFIC:Ljava/lang/String; = "apvd"

.field public static final KEY_CURR_LOCK_DURATION:Ljava/lang/String; = "pw_wld"

.field public static final KEY_CURR_LOCK_NAME:Ljava/lang/String; = "pw_wln"

.field public static final KEY_ET_EAP_TYPE:Ljava/lang/String; = "et_typ"

.field public static final KEY_ET_PHASE1_TYPE:Ljava/lang/String; = "et_pho"

.field public static final KEY_ET_PHASE2_TYPE:Ljava/lang/String; = "et_pht"

.field public static final KEY_ET_USE_ANONYMOUS:Ljava/lang/String; = "et_ani"

.field public static final KEY_ET_USE_CACERTI:Ljava/lang/String; = "et_cac"

.field public static final KEY_FW_HANG_REASON:Ljava/lang/String; = "fw_han"

.field public static final KEY_GOTOWEB_CLICK:Ljava/lang/String; = "GTCK"

.field public static final KEY_GOTOWEB_HTTP_RESP:Ljava/lang/String; = "GTRP"

.field public static final KEY_ON_APP:Ljava/lang/String; = "on_app"

.field public static final KEY_ON_CONFIG_COUNT:Ljava/lang/String; = "ONCN"

.field public static final KEY_ON_FOREGROUND_APP:Ljava/lang/String; = "ONFG"

.field public static final KEY_ON_STATE:Ljava/lang/String; = "on_enb"

.field public static final KEY_SC_APP_NAME:Ljava/lang/String; = "sc_app"

.field public static final KEY_SC_CACHED:Ljava/lang/String; = "scca"

.field public static final KEY_SC_COUNT:Ljava/lang/String; = "sc_cnt"

.field public static final KEY_SC_DELAYED:Ljava/lang/String; = "scde"

.field public static final KEY_SC_FULL:Ljava/lang/String; = "scfu"

.field public static final KEY_SC_P_1_6_11CH_ONLY:Ljava/lang/String; = "sc16"

.field public static final KEY_SC_P_24_ONLY:Ljava/lang/String; = "sc24"

.field public static final KEY_SC_P_DFS:Ljava/lang/String; = "scpd"

.field private static final ONOF:[[Ljava/lang/String;

.field private static final PACKAGE_NAME_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final PROVIDER_NAME_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final SCAN:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WifiBigDataLog"


# instance fields
.field public final APP_ID:Ljava/lang/String;

.field private final mExtraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogMessages:Z

.field private final mWifiChipInfo:Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->DBG:Z

    const/16 v0, 0x13

    new-array v0, v0, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ap_sec"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v1

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ap_stc"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ap_snt"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v6

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "cn_rsn"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v7

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "aplo"

    aput-object v4, v3, v1

    const-string v4, "0"

    aput-object v4, v3, v2

    aput-object v3, v0, v8

    const/4 v3, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "apvd"

    aput-object v5, v4, v1

    const-string v5, "0"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_oui"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_chn"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_bdw"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_rsi"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_drt"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_mod"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xc

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_ant"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xd

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_mmo"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_pas"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_snr"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0x10

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_nos"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0x11

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_akm"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0x12

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_rct"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    sput-object v0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->DISC:[[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "cn_sts"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v1

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ap_sec"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ap_stc"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v6

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ap_snt"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v7

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ap_chn"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v8

    const/4 v3, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_rsi"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ap_oui"

    aput-object v5, v4, v1

    const-string v5, ""

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    sput-object v0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->ASSOC:[[Ljava/lang/String;

    new-array v0, v2, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "fw_han"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v1

    sput-object v0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->HANG:[[Ljava/lang/String;

    new-array v0, v8, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "on_enb"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v1

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "on_app"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ONCN"

    aput-object v4, v3, v1

    const-string v4, "0"

    aput-object v4, v3, v2

    aput-object v3, v0, v6

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ONFG"

    aput-object v4, v3, v1

    const-string v4, "x"

    aput-object v4, v3, v2

    aput-object v3, v0, v7

    sput-object v0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->ONOF:[[Ljava/lang/String;

    new-array v0, v6, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "pw_wln"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v1

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "pw_wld"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->CURR:[[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sc_app"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v1

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sc_cnt"

    aput-object v4, v3, v1

    const-string v4, "0"

    aput-object v4, v3, v2

    aput-object v3, v0, v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "scde"

    aput-object v4, v3, v1

    const-string v4, "0"

    aput-object v4, v3, v2

    aput-object v3, v0, v6

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "scca"

    aput-object v4, v3, v1

    const-string v4, "0"

    aput-object v4, v3, v2

    aput-object v3, v0, v7

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "scfu"

    aput-object v4, v3, v1

    const-string v4, "0"

    aput-object v4, v3, v2

    aput-object v3, v0, v8

    const/4 v3, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "sc24"

    aput-object v5, v4, v1

    const-string v5, "0"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "sc16"

    aput-object v5, v4, v1

    const-string v5, "0"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "scpd"

    aput-object v5, v4, v1

    const-string v5, "0"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    sput-object v0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->SCAN:[[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "et_typ"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v1

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "et_pho"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "et_pht"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v6

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "et_cac"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v7

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "et_ani"

    aput-object v4, v3, v1

    const-string v4, ""

    aput-object v4, v3, v2

    aput-object v3, v0, v8

    sput-object v0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->EAPINFO:[[Ljava/lang/String;

    new-array v0, v6, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "GTCK"

    aput-object v4, v3, v1

    const-string v4, "0"

    aput-object v4, v3, v2

    aput-object v3, v0, v1

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "GTRP"

    aput-object v4, v3, v1

    const-string v1, "0"

    aput-object v1, v3, v2

    aput-object v3, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->GOWP:[[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.net.wifi"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->APP_ID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mLogMessages:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mExtraData:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;-><init>(Lcom/samsung/android/server/wifi/WifiBigDataLog$1;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mWifiChipInfo:Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getJsonFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mLogMessages:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiBigDataLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJsonFormat - feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "WifiBigDataLog"

    const-string v2, "getJsonFormat - feature is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DISC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mWifiChipInfo:Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/server/wifi/WifiBigDataLog;->DISC:[[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cn_rom"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cn_irs"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "ASSO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mWifiChipInfo:Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/server/wifi/WifiBigDataLog;->ASSOC:[[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cn_dis"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "HANG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mWifiChipInfo:Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/server/wifi/WifiBigDataLog;->HANG:[[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v1, "ONOF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mWifiChipInfo:Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/server/wifi/WifiBigDataLog;->ONOF:[[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "CURR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/samsung/android/server/wifi/WifiBigDataLog;->CURR:[[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    const-string v1, "SCAN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/server/wifi/WifiBigDataLog;->SCAN:[[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    const-string v1, "GOWP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/samsung/android/server/wifi/WifiBigDataLog;->GOWP:[[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    const-string v1, "EAPT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/server/wifi/WifiBigDataLog;->EAPINFO:[[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "keys"    # [[Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .local v2, "ignoreComma":Z
    move-object v0, p1

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v3, v0, v1

    .local v3, "key":[Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "key":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private parseData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v4, "WifiBigDataLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t parse bigdata extra - feature:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v3

    :cond_2
    const-string v4, "\\s+"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mLogMessages:Z

    if-eqz v4, :cond_3

    const-string v4, "WifiBigDataLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseData() feature - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    check-cast v2, [[Ljava/lang/String;

    .local v2, "parseInfo":[[Ljava/lang/String;
    const-string v4, "DISC"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v2, Lcom/samsung/android/server/wifi/WifiBigDataLog;->DISC:[[Ljava/lang/String;

    :cond_5
    :goto_2
    if-eqz v2, :cond_1

    if-eqz v0, :cond_6

    array-length v4, v0

    array-length v5, v2

    if-eq v4, v5, :cond_e

    :cond_6
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mLogMessages:Z

    if-eqz v4, :cond_1

    const-string v4, "WifiBigDataLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t pase bigdata extra - feature:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string v4, "ASSO"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v2, Lcom/samsung/android/server/wifi/WifiBigDataLog;->ASSOC:[[Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v4, "HANG"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v2, Lcom/samsung/android/server/wifi/WifiBigDataLog;->HANG:[[Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string v4, "ONOF"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v2, Lcom/samsung/android/server/wifi/WifiBigDataLog;->ONOF:[[Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string v4, "CURR"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v2, Lcom/samsung/android/server/wifi/WifiBigDataLog;->CURR:[[Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v4, "SCAN"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v2, Lcom/samsung/android/server/wifi/WifiBigDataLog;->SCAN:[[Ljava/lang/String;

    goto :goto_2

    :cond_c
    const-string v4, "GOWP"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v2, Lcom/samsung/android/server/wifi/WifiBigDataLog;->GOWP:[[Ljava/lang/String;

    goto :goto_2

    :cond_d
    const-string v4, "EAPT"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v2, Lcom/samsung/android/server/wifi/WifiBigDataLog;->EAPINFO:[[Ljava/lang/String;

    goto :goto_2

    :cond_e
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private putValues([[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "keys"    # [[Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    move-object v0, p1

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v4, v0, v1

    .local v4, "key":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v7, p2, v3

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0
.end method


# virtual methods
.method public getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mExtraData:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    const-string v0, "WifiBigDataLog"

    const-string v1, "init : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mExtraData:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->parseData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->getJsonFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extra":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .end local v3    # "extra":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiBigDataLog;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiBigDataLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog - feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "android.net.wifi"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_3

    const-string v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mExtraData:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLogVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mLogMessages:Z

    return-void
.end method
